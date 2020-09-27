import lunr from "lunr"
import stemmer from "lunr-languages/lunr.stemmer.support"
import spanish from "lunr-languages/lunr.es"
import {Respuesta} from "../Respuesta";

stemmer(lunr)
spanish(lunr)

export default class BuscadorMoodle {
    index;
    entradas;

    /**
     * @param {string} rutaIndice
     * @param {EntradaMoodle[]} entradas
     */
    constructor({entradas}) {
        this._guardarEntradas(entradas)
        this.index = lunr(function() {
            this.use(lunr.es)
            this.ref('id')
            this.field('asunto', {boost: 2})
            this.field('respuestas')
            entradas.forEach(function (entrada) {
                this.add({
                    ...entrada,
                    respuestas: entrada.respuestas.join('. ')
                })
            }, this)
        })
    }

    /**
     * Guarda las entrdas indexándolas por id.
     * @param {EntradaMoodle[]} entradas
     * @private
     */
    _guardarEntradas(entradas) {
        this.entradas = new Map(entradas.map(entrada => [entrada.id, entrada]))
    }

    /**
     * Devuelve una entrada a partir de su id.
     * @param {number} idEntrada
     * @returns {EntradaMoodle}
     * @private
     */
    _getEntrada(idEntrada) {
        return this.entradas.get(idEntrada)
    }

    /**
     * Busca las entradas que coinciden con consulta. Devuelve una
     * lista de respuestas.
     * @param {string} consulta
     * @returns {Respuesta[]}
     */
    buscar(consulta) {
        return this.index.search(consulta).map(resultado => {
            const entrada = this._getEntrada(parseInt(resultado.ref))
            return new Respuesta({
                resumen: entrada.consulta,
                link: entrada.link
            })
        })
    }
}
