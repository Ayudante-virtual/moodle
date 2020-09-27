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
        this.entradas = entradas
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
     * Busca las entradas que coinciden con consulta. Devuelve una
     * lista de respuestas.
     * @param {string} consulta
     * @returns {Respuesta[]}
     */
    buscar(consulta) {
        return this.index.search(consulta).map(resultado => {
            const entrada = this._getEntrada(resultado.ref)
            return new Respuesta({
                resumen: entrada.consulta,
                link: entrada.link
            })
        })
    }

    /**
     * Devuelve una entrada a partir de su id.
     * @param {string} idEntrada
     * @returns {EntradaMoodle}
     * @private
     */
    _getEntrada(idEntrada) {
        idEntrada = parseInt(idEntrada)
        return this.entradas.find(entrada => entrada.id === idEntrada)
    }
}
