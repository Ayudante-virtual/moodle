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

// app.post('/v1/cliente/:idCliente', async (req, res) => {
//
// })
//
// app.put('/v1/cliente/:idCliente/buscador-foro-moodle/:idBuscador', async (req, res) => {
//     const {idCliente, idBuscador} = req.params
//     console.log('idCliente', idCliente)
//     console.log('idBuscador', idBuscador)
//     const {url, token, user, password, idForo} = req.body
//     const cliente = await ClienteMoodle.build({url, token, usuarios: user, clave: password})
//     cliente.getEntradasDeForo(idForo)
//     res.send(req.body)
// })
//
// app.get('/v1/cliente/:idCliente/consultas', async (req, res) => {
//
// })
//
// app.post('/v1/buscadores-foro-moodle/:idBuscador/refresco', async (req, res) => {
//     console.log('desde', req.body.desde) // Actualizar los que tienen una modificación desde
// })
//
//
app.listen(process.env.PORT, () => {
    console.log('App iniciada')
})
