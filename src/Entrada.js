export default class Entrada {
    asunto;
    consulta;
    link;
    respuestas;

    constructor({asunto, consulta, link, respuestas}) {
        this.asunto = asunto;
        this.consulta = consulta;
        this.link = link;
        this.respuestas = respuestas;
    }
}
