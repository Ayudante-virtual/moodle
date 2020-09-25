import moodle_client from "moodle-client"
import ArgumentoRequeridoError from "../utils/ArgumentoRequeridoError";
import TokenInvalidoError from "../utils/TokenInvalidoError";
import Entrada from "../Entrada";
import fs from "fs";

/**
 * Cliente de Moodle para obtener posts de foros.
 */
class ClienteMoodle {
    _moodle
    _config

    constructor({url, token = null, usuario = null, clave = null} = {}) {
        if (!url)
            throw new ArgumentoRequeridoError('Se debe proporcionar la url del servidor Moodle')

        if (!token && !(usuario && clave))
            throw new ArgumentoRequeridoError('Se debe proporcionar el token o (el usuario y la clave)')

        this._config = {wwwroot: url}
        if (token) {
            this._config.token = token
        } else {
            this._config.username = usuario
            this._config.password = clave
        }
    }

    /**
     * Inicia el cliente.
     * @returns {Promise<void>}
     * @private
     */
    async _init() {
        this._moodle = await moodle_client.init(this._config)
        await this._testConnection()
    }

    /**
     * Testea el token provisto/obtenido.
     * @returns {Promise<void>}
     * @private
     */
    async _testConnection() {
        const result = await this._moodle.call({
            wsfunction: "core_webservice_get_site_info",
        })
        if(result.errorcode === 'invalidtoken')
            throw new TokenInvalidoError('El token proporcionado/obtenido es inválido')
    }

    /**
     * Devuelve una lista de entradas de un foro.
     * @param {number} idForo
     * @returns {Entrada[]}
     */
    async getEntradasDeForo(idForo) {
        // await this._getDiscusionesDeForo(idForo)
        return [new Entrada()]
    }

    /**
     * Devuelve una lista de discusiones de un foro
     * @param {number} idForo
     * @private
     */
    async _getDiscusionesDeForo(idForo) {
        const resultado = await this._moodle.call({
            wsfunction: "core_webservice_get_site_info",
            // method: "POST",
            // args: {
            //     forumid: idForo,
            // }
        })
        console.log(resultado);
        //     .then(function(info) {
        //     console.log(info);
        //     fs.writeFileSync(
        //         './posts.json',
        //         JSON.stringify(info),
        //         function (err) {
        //             if (err) {
        //                 console.error('Crap happens');
        //             }
        //         }
        //     );
        // });
    }

}

const build = async (args) => {
    const cliente = new ClienteMoodle(args)
    await cliente._init()
    return cliente
}

export default {build}
