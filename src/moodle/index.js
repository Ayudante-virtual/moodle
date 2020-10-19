import buildMoodleConnection from "./MoodleConnection";
import BuscadorMoodle from "./BuscadorMoodle";

/**
 * @returns {Promise<BuscadorMoodle>}
 */
export default async () => {
    const cliente = await buildMoodleConnection({
        url: process.env.MOODLE_URL,
        usuario: process.env.MOODLE_USER,
        clave: process.env.MOODLE_PASSWORD,
        token: process.env.MOODLE_TOKEN,
    })
    const entradas = await cliente.getEntradasDeForo(process.env.MOODLE_FORUM_ID)
    return new BuscadorMoodle({entradas});
}

