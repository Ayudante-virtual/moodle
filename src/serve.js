import express from "express"

const app = express();

app.use(express.json())

app.get('/v1/consultas', (req, res) => {
    const {idForo, consulta} = req.query.forumId;
    if(!idForo)
    console.log(idForo, consulta)
})

app.listen(process.env.PORT)
