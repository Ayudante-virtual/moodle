import express from "express"
import moodle from "./moodle";
import ServidorMoodleNoDisponibleError from "./utils/ServidorMoodleNoDisponibleError";

const buscadorMoodle = await (async () => {
    console.log('Iniciando buscador de moodle...')
    let buscadorMoodle
    let intentos
    for (intentos = 30; intentos > 0; intentos--) {
        try {
            buscadorMoodle = await moodle();
            console.log('Buscador de moodle iniciado')
            return buscadorMoodle;
        } catch (e) {
            if (e instanceof ServidorMoodleNoDisponibleError) {
                console.log(`Esperando a Moodle... ${intentos} intentos restantes`)
                await new Promise(r => setTimeout(r, 1000));
            } else {
                throw e
            }
        }
    }
    throw Error('El servidor de Moodle está inactivo')
})()

const app = express();

app.use(express.json())

app.get('/v1/consultas', async (req, res) => {
    const {busqueda, max = 3} = req.query;
    if (!busqueda)
        return res.status(400).send({error: 'Se debe incluir la búsqueda'})
    const respuestas = await buscadorMoodle.buscar({busqueda, max})
    res.status(200).send(respuestas)
})

app.listen(process.env.PORT, () => {
    console.log('App iniciada')
})
