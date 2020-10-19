import {MoodleConnection} from "../moodle/MoodleConnection";
import ForoInexistenteError from "../utils/ForoInexistenteError";


export default class Cliente {
    /**
     * @var {string}
     * @private
     */
    _id

    /**
     * @var {MoodleConnection}
     * @private
     */
    _moodleConnection

    /**
     * @var {int}
     * @private
     */
    _moodleForumId

    static async crear(id, url, token, user, password, idForo) {
        const cliente = new Cliente(id, url, token, user, password, idForo)
        await cliente.iniciarConexion()
        if(!await cliente._moodleConnection.existeForo(idForo)) throw new ForoInexistenteError(`No existe el foro con id ${idForo}`)
        return cliente
    }

    constructor(id, url, token, usuario, clave, idForo) {
        this._id = id
        this._moodleConnection = new MoodleConnection({url, token, usuario, clave})
        this._moodleForumId = idForo
    }

    async iniciarConexion() {
        await this._moodleConnection.init();
    }
}
