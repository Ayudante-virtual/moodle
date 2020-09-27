export default class Buscador {
    buscadores;

    constructor(buscadores) {
        this.buscadores = buscadores;
    }

    /**
     * Devuelve una lista de respuestas que coinciden con la consulta.
     * @param {string} consulta
     * @returns {Promise<Respuesta>}
     */
    buscar(consulta) {
        return Promise.all(this.buscadores
            .map(async buscador => await buscador.buscar(consulta))
            .flat())
    }
}
