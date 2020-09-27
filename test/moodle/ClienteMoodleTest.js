import {describe, it, beforeEach} from "mocha";
import ClienteMoodle from "../../src/moodle/ClienteMoodle";
import ArgumentoRequeridoError from "../../src/utils/ArgumentoRequeridoError";
import TokenInvalidoError from "../../src/utils/TokenInvalidoError";
import ForoInexistenteError from "../../src/utils/ForoInexistenteError";
import EntradaMoodle from "../../src/moodle/EntradaMoodle";
import ServidorMoodleNoDisponibleError from "../../src/utils/ServidorMoodleNoDisponibleError";
import AutenticacionInvalidaError from "../../src/utils/AutenticacionInvalidaError";


describe('Cliente Moodle', () => {
    describe('Creación', () => {
        [
            undefined,
            {},
            {url: process.env.MOODLE_URL},
            {url: process.env.MOODLE_URL, usuario: 'un usuario'},
            {url: process.env.MOODLE_URL, clave: 'una clave'},
        ].forEach(param => {
            it('Eleva una excepción si no se proveen las opciones requeridas.', () => {
                return ClienteMoodle.build(param).should.be.rejectedWith(ArgumentoRequeridoError)
            });
        })

        it('Eleva una excepción con url incorrecta', () => {
            return ClienteMoodle.build({
                url: 'http://una-url',
                usuario: 'un usuario',
                clave: 'una clave'
            }).should.be.rejectedWith(ServidorMoodleNoDisponibleError)
        });

        it('Eleva una excepción con usuario y clave incorrectas', () => {
            return ClienteMoodle.build({
                url: process.env.MOODLE_URL,
                usuario: 'un usuario',
                clave: 'una clave'
            }).should.be.rejectedWith(AutenticacionInvalidaError)
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

    describe('Leer foro', () => {
        let cliente;
        beforeEach(async () => {
            cliente = await ClienteMoodle.build({
                url: process.env.MOODLE_URL,
                token: process.env.MOODLE_TOKEN
            })
        })

        it('Eleva una excepción si no existe el foro', async () => {
            return cliente.getEntradasDeForo(57895)
                .should.be.rejectedWith(ForoInexistenteError)
        })

        it('Obtiene las discusiones de un foro correctamente', async () => {
            const result = await cliente.getEntradasDeForo(1)
            result.should.be.eql([
                    new EntradaMoodle({
                        id: 7,
                        asunto: 'Consulta sin respuesta',
                        consulta: 'Mensaje de la consulta de prueba sin respuesta',
                        link: 'http://moodle/mod/forum/discuss.php?d=3',
                        respuestas: [ 'Mensaje de la consulta de prueba sin respuesta' ]
                    }),
                    new EntradaMoodle({
                        id: 5,
                        asunto: 'Segunda consulta de prueba',
                        consulta: 'Consulta de prueba número dos',
                        link: 'http://moodle/mod/forum/discuss.php?d=2',
                        respuestas: [
                            'Respuesta de la segunda consulta de prueba',
                            'Consulta de prueba número dos'
                        ]
                    }),
                    new EntradaMoodle({
                        id: 1,
                        asunto: 'Consulta de prueba',
                        consulta: 'Mensaje de la consulta de prueba',
                        link: 'http://moodle/mod/forum/discuss.php?d=1',
                        respuestas: [
                            'Respuesta anidada',
                            'Segunda respuesta a la consulta de prueba',
                            'Respuesta de la consulta de prueba',
                            'Mensaje de la consulta de prueba'
                        ]
                    })
                ]
            )
        })
    })
});
