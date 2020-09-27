import moodle_client from "moodle-client"
import htmlToText from "html-to-text";

import ArgumentoRequeridoError from "../utils/ArgumentoRequeridoError";
import TokenInvalidoError from "../utils/TokenInvalidoError";
import EntradaMoodle from "./EntradaMoodle";
import ForoInexistenteError from "../utils/ForoInexistenteError";


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
        if(result.errorcode)
            throw new Error('Ocurrió un error inesperado al conectarse a Moodle')
    }

    /**
     * Devuelve una lista de discusiones de un foro
     * @param {number} idForo
     * @returns {Promise<EntradaMoodle[]>}
     * @private
     */
    async getEntradasDeForo(idForo) {
        const resultado = await this._moodle.call({
            wsfunction: "mod_forum_get_forum_discussions_paginated",
            method: "POST",
            args: {
                forumid: idForo,
            }
        })
        if(resultado.errorcode === 'invalidrecord')
            throw new ForoInexistenteError(`El foro con id ${idForo} no existe`)
        if(resultado.errorcode)
            throw new Error(`Ocurrió un error inesperado al leer las discusiones del foro con id ${idForo}`)

        return Promise.all(resultado.discussions.map(async discusion => new EntradaMoodle({
            id: discusion.id,
            asunto: discusion.subject,
            consulta: htmlToText.fromString(discusion.message),
            link: `${process.env.MOODLE_URL}/mod/forum/discuss.php?d=${discusion.discussion}`,
            respuestas: await this._getPostsDeDiscusion(discusion.discussion)
        })));
    }

    /**
     * Devuelve las respuestas de una discusión.
     * @param {number} idDiscusion
     * @returns {Promise<string[]>}
     * @private
     */
    async _getPostsDeDiscusion(idDiscusion) {
        const resultado = await this._moodle.call({
            wsfunction: "mod_forum_get_forum_discussion_posts",
            method: "POST",
            args: {
                discussionid: idDiscusion,
            }
        })
        return resultado.posts.map(post => htmlToText.fromString(post.message));
    }
}

/**
 *
 * @param {{url:string, token:string, usuario:string, clave:string}} args
 * @returns {Promise<ClienteMoodle>}
 */
const build = async (args) => {
    const cliente = new ClienteMoodle(args)
    await cliente._init()
    return cliente
}

export default {build}
