import moodle_client from "moodle-client"
import htmlToText from "html-to-text"
import PromisePool from "@supercharge/promise-pool"

import ArgumentoRequeridoError from "../utils/ArgumentoRequeridoError"
import TokenInvalidoError from "../utils/TokenInvalidoError"
import EntradaMoodle from "./EntradaMoodle"
import ForoInexistenteError from "../utils/ForoInexistenteError"
import ServidorMoodleNoDisponibleError from "../utils/ServidorMoodleNoDisponibleError"
import AutenticacionInvalidaError from "../utils/AutenticacionInvalidaError"
import ConexionNoInicializadaError from "../utils/ConexionNoInicializadaError";


/**
 * Cliente de Moodle para obtener posts de foros.
 */
export class MoodleConnection {
    _moodle
    _url
    _token
    _usuario
    _clave

    /**
     * Se debe llamar a init antes de realizar otra acción.
     * Es obligatorio incluir el token o (el usuario y la contraseña).
     * @param url {string}
     * @param token {?string}
     * @param usuario {?string}
     * @param clave {?string}
     */
    constructor({url, token = null, usuario = null, clave = null} = {}) {
        if (!url)
            throw new ArgumentoRequeridoError('Se debe proporcionar la url del servidor Moodle')

        if (!token && !(usuario && clave))
            throw new ArgumentoRequeridoError('Se debe proporcionar el token o (el usuario y la clave)')

        this._url = url
        this._token = token
        this._usuario = usuario
        this._clave = clave
    }

    /**
     * Inicia el cliente.
     * @returns {Promise<void>}
     * @private
     */
    async init() {
        try {
            this._moodle = await moodle_client.init(this._getMoodleConfig())
            await this._testConnection()
        } catch (e) {
            if (e.name === 'RequestError')
                throw new ServidorMoodleNoDisponibleError('El servidor de Moodle no se encuentra disponible')
            if (e.message.includes('authentication failed'))
                throw new AutenticacionInvalidaError('No fue posible autenticarse a Moodle')
            throw e
        }
    }

    /**
     * Devuelve la configuración necesario para inicial el cliente de
     * moodle.
     * @returns {Object}
     * @private
     */
    _getMoodleConfig() {
        const config = {wwwroot: this._url}
        if (this._token) {
            config.token = this._token
        } else {
            config.username = this._usuario
            config.password = this._clave
        }
        return config
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
        if (result.errorcode === 'invalidtoken')
            throw new TokenInvalidoError('El token proporcionado/obtenido es inválido')
        if (result.errorcode)
            throw new Error('Ocurrió un error inesperado al conectarse a Moodle')
    }

    /**
     * Valida que la conexión haya sido inicializada, eleva una
     * excepción en caso contrario.
     * @private
     */
    _validarInicializacion() {
        if(!this._moodle) throw new ConexionNoInicializadaError('La conexión debe ser inicializada antes de usar el cliente')
    }

    /**
     * Devuelve true si existe el foro, false en caso contrario.
     * @param idForo
     * @returns {Promise<boolean>}
     */
    async existeForo(idForo) {
        this._validarInicializacion()
        if (!idForo) throw new ArgumentoRequeridoError('El id del foro es requerido')

        try {
            await this._getDiscusiones(idForo, {page: 0, perpage: 1})
        } catch (e) {
            if (e.name === 'ForoInexistenteError')
                return false;
            throw e;
        }
        return true;
    }

    /**
     * Devuelve una lista de discusiones de un foro
     * @param {number} idForo
     * @param {?Date} ultima_modificiacion_desde devuelve las entradas
     * que fueron modificadas desde dicha fecha.
     * @returns {Promise<EntradaMoodle[]>}
     */
    async getEntradasDeForo(idForo, ultima_modificiacion_desde = null) {
        this._validarInicializacion()
        let discusiones = await this._getDiscusiones(idForo)
        discusiones = this._filtrarDiscusiones(
            discusiones,
            ultima_modificiacion_desde
        )
        return await this._getEntradas(discusiones)
    }

    /**
     * Devuelve las entradas del foro correspondientes a las
     * discusiones.
     * @param discusiones
     * @returns {Promise<EntradaMoodle[]>}
     * @private
     */
    async _getEntradas(discusiones) {
        const {results, errors} = await PromisePool
            .withConcurrency(10)
            .for(discusiones)
            .process(async discusion => new EntradaMoodle({
                id: discusion.id,
                asunto: discusion.subject,
                consulta: htmlToText.fromString(discusion.message, {
                    wordwrap: false,
                    singleNewLineParagraphs: true
                }),
                link: `${process.env.MOODLE_URL}/mod/forum/discuss.php?d=${discusion.discussion}`,
                respuestas: await this._getPostsDeDiscusion(discusion.discussion)
            }))

        return results;
    }

    /**
     * Devuelve las discusiones de un foro.
     * @param idForo
     * @param {Object} args
     * @returns {Promise<Object[]>}
     * @throws ForoInexistenteError
     * @throws Error
     * @private
     */
    async _getDiscusiones(idForo, args = {}) {
        const resultado = await this._moodle.call({
            wsfunction: "mod_forum_get_forum_discussions_paginated",
            method: "GET",
            args: {
                forumid: idForo,
                ...args
            }
        })
        if (resultado.errorcode === 'invalidrecord')
            throw new ForoInexistenteError(`El foro con id ${idForo} no existe`)
        if (resultado.errorcode)
            throw new Error(`Ocurrió un error inesperado al leer las discusiones del foro con id ${idForo}`)
        return resultado.discussions
    }

    /**
     * Devuelve las discusiones del foro que fueron modificadas luego
     * de ultima_modificiacion_desde.
     * @param {Object[]} entradas
     * @param {?Date} ultima_modificiacion_desde
     * @returns {Object[]}
     */
    _filtrarDiscusiones(entradas, ultima_modificiacion_desde) {
        if (!ultima_modificiacion_desde)
            return entradas
        return entradas.filter(discusion =>
            new Date(discusion.timemodified * 1000) >= ultima_modificiacion_desde)
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
            method: "GET",
            args: {
                discussionid: idDiscusion,
            }
        })
        return resultado.posts.map(post => htmlToText.fromString(post.message, {
            wordwrap: false,
            singleNewLineParagraphs: true
        }));
    }
}

/**
 * @param {Object} args
 * @param args.url {string}
 * @param args.token {?string}
 * @param args.usuario {?string}
 * @param args.clave {?string}
 * @returns {Promise<MoodleConnection>}
 */
const buildMoodleConnection = async (args) => {
    const cliente = new MoodleConnection(args)
    await cliente.init()
    return cliente
}

export default buildMoodleConnection
