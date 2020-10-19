import express from "express"
import ClienteMoodle from "./moodle/ClienteMoodle";
import ForoInexistenteError from "./utils/ForoInexistenteError";

const app = express();

app.use(express.json())

app.get('/v1/cliente/:idCliente/consultas', async (req, res) => {
    const {idCliente} = req.params
    const {busqueda, max = 3} = req.query;
    // if (!busqueda)
    //     return res.status(400).send({error: 'Se debe incluir la búsqueda'})
    // const respuestas = await buscadorMoodle.buscar({busqueda, max})
    // res.status(200).send(respuestas)
})

app.put('/v1/cliente/:idCliente/buscador', async (req, res) => {
    const {idCliente} = req.params
    const {url, token, user, password, idForo} = req.body

    let cliente;
    try {
        cliente = await ClienteMoodle.build({url, token, usuario: user, clave: password})
        if (!await cliente.existeForo(idForo)) throw new ForoInexistenteError(`No existe el foro con id ${idForo}`)
    } catch (e) {
        return res.status(400).send({
            status: 400,
            error: e.name,
            message: e.message
        })
    }

    res.send({
        status: "200",
        message: "ok"
    })
})

app.post('/v1/buscadores-foro-moodle/:idBuscador/refresco', async (req, res) => {
    console.log('desde', req.body.desde) // Actualizar los que tienen una modificación desde
})

export default app
