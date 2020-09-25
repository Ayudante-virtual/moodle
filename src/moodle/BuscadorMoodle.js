import fs from "fs"

export default class BuscadorMoodle {

    constructor(indexPath) {
        this.index = lunr.Index.load(
            JSON.parse(fs.readFileSync(indexPath, {encoding: "utf-8"}))
        )
    }

    /**
     * Busca las entradas que coinciden con consulta. Devuelve una
     * lista de respuestas.
     * @param {string} consulta
     * @returns {Respuesta[]}
     */
    buscar(consulta) {
        return this.index.search(consulta)
    }
}
