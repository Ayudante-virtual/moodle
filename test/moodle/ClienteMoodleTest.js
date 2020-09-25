import {describe, it, before} from "mocha";
import ClienteMoodle from "../../src/moodle/ClienteMoodle";
import ArgumentoRequeridoError from "../../src/utils/ArgumentoRequeridoError";
import TokenInvalidoError from "../../src/utils/TokenInvalidoError";


describe('Cliente Moodle', () => {
    describe('Creación', () => {
        const params = [
            undefined,
            {},
            {url: process.env.MOODLE_URL},
            {url: process.env.MOODLE_URL, usuario: 'un usuario'},
            {url: process.env.MOODLE_URL, clave: 'una clave'},
        ]

        params.forEach(param => {
            it('Eleva una excepción si no se proveen las opciones requeridas.', () => {
                return ClienteMoodle.build(param).should.be.rejectedWith(ArgumentoRequeridoError)
            });
        })

        it('Eleva una excepción con url incorrecta', () => {
            return ClienteMoodle.build({
                url: 'http://una-url',
                usuario: 'un usuario',
                clave: 'una clave'
            }).should.be.rejected()
        });

        it('Eleva una excepción con usuario y clave incorrectas', () => {
            return ClienteMoodle.build({
                url: process.env.MOODLE_URL,
                usuario: 'un usuario',
                clave: 'una clave'
            }).should.be.rejectedWith(/authentication failed/)
        });

        it('Eleva una excepción con token incorrecto', () => {
            return ClienteMoodle.build({
                url: process.env.MOODLE_URL,
                token: 'un token',
            }).should.be.rejectedWith(TokenInvalidoError)
        });

        it('No eleva una excepción si el usuario y la clave son correctas', () => {
            return ClienteMoodle.build({
                url: process.env.MOODLE_URL,
                usuario: process.env.MOODLE_USER,
                clave: process.env.MOODLE_PASSWORD
            }).should.not.be.rejected()
        });

        it('No eleva una excepción si el token es correcto', () => {
            return ClienteMoodle.build({
                url: process.env.MOODLE_URL,
                token: process.env.MOODLE_TOKEN
            }).should.not.be.rejected()
        });

    });

    // describe('Obtener entradas', () => {
    //     let cliente;
    //     before(async () => {
    //         cliente = await ClienteMoodle.build({
    //             url: process.env.MOODLE_URL,
    //             token: process.env.MOODLE_TOKEN
    //         })
    //     })
    //
    //     it('Algo', async () => {
    //         const result = await cliente.getEntradasDeForo(5)
    //         console.log(result)
    //     })
    // })
});
