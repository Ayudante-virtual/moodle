import express from "express"
import moodle from "./moodle";
import ServidorMoodleNoDisponibleError from "./utils/ServidorMoodleNoDisponibleError";

const iniciarBuscadorMoodle = async () => {
    console.log('Iniciando buscador de moodle...')
    let buscadorMoodle
    let intentos
    for (intentos = 25; intentos > 0; intentos--) {
        try {
            buscadorMoodle = await moodle();
        } catch (e) {
            if (e instanceof ServidorMoodleNoDisponibleError) {
                console.log(`Esperando a Moodle... ${intentos} intentos restantes`)
                await new Promise(r => setTimeout(r, 1000));
            } else {
                throw e
            }
        }
    }
    console.log('Buscador de moodle iniciado')
    return buscadorMoodle;
}
const buscadorMoodle = await iniciarBuscadorMoodle()
const app = express();

app.use(express.json())

app.get('/v1/consultas', (req, res) => {
    const {busqueda, max = 3} = req.query;
    if (!busqueda)
        return res.status(400).send({error: 'Se debe incluir la búsqueda'})
    const respuestas = buscadorMoodle.buscar({busqueda, max})
    res.status(200).send(respuestas)
})

app.listen(process.env.PORT, () => {
    console.log('App iniciada')
})
