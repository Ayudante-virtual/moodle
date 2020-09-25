import path from "path"
import {before} from "mocha"
import {config} from "dotenv"
import axios from "axios"

before(async function () {
    config({path: path.resolve(process.cwd(), '.env.test')})
    this.timeout(15000)

    let intentos
    for (intentos = 20; intentos > 0; intentos--) {
        try {
            const result = await axios.get(process.env.MOODLE_URL)
            if(result.status === 200) break;
        } catch (e) {
            console.log(`Esperando a Moodle... ${intentos} intentos restantes`)
            await new Promise(r => setTimeout(r, 1000));
        }
    }
    if(intentos === 0)
        throw new Error('Moodle está inactivo, no se puede continuar con los tests')
});


// config({path: path.resolve(process.cwd(), '.env.test')})

