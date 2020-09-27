import express from "express"
import moodle from "./moodle";

console.log('Iniciando buscador de moodle...')
const buscadorMoodle = await moodle();
console.log('Buscador de moodle iniciado')

const app = express();

app.use(express.json())

app.get('/v1/consultas', (req, res) => {
    const {busqueda, max = 3} = req.query;
    if(!busqueda)
        return res.status(400).send({error: 'Se debe incluir la búsqueda'})
    const respuestas = buscadorMoodle.buscar({busqueda, max})
    res.status(200).send(respuestas)
})

app.listen(process.env.PORT, () => {
    console.log('App iniciada')
})
