export default class EntradaMoodle {
    asunto;
    consulta;
    link;
    respuestas;
    id;

    constructor({id, asunto, consulta, link, respuestas}) {
        this.id = id;
        this.asunto = asunto;
        this.consulta = consulta;
        this.link = link;
        this.respuestas = respuestas;
    }
}
