import {describe, it, beforeEach} from "mocha";
import EntradaMoodle from "../../src/moodle/EntradaMoodle";
import BuscadorMoodle from "../../src/moodle/BuscadorMoodle";
import BusquedaInvalidaError from "../../src/utils/BusquedaInvalidaError";

describe('BuscadorMoodle', () => {
    describe('Buscar', () => {
        let buscador;

        beforeEach(() => {
            const entradas = [
                new EntradaMoodle({
                    id: 1,
                    link: 'https://mascotas.hola.com/animalescuriosos/20171130/donde-viven-los-monos/',
                    asunto: '¿Dónde viven los monos?',
                    consulta: 'Hola, quisiera saber dónde viven los monos',
                    respuestas: [
                        'Hola, quisiera saber donde viven los monos',
                        'Naturalmente viven en África, Asia y el sur de América',
                        'Son originarios de África, Asia y el sur de América'
                    ]
                }),
                new EntradaMoodle({
                    id: 2,
                    link: 'https://cuantoviven.net/cuanto-viven-los-monos/',
                    asunto: '¿Cuánto tiempo viven los monos?',
                    consulta: 'Hola, quisiera saber cuánto tiempo viven los monos',
                    respuestas: [
                        'Hola, quisiera saber cuánto tiempo viven los monos',
                        'Viven aproximadamente 20 años'
                    ]
                }),
                new EntradaMoodle({
                    id: 3,
                    link: 'https://es.wikipedia.org/wiki/State_(patr%C3%B3n_de_dise%C3%B1o)',
                    asunto: 'Patron state',
                    consulta: 'Cuál es el patrón state?',
                    respuestas: [
                        'Cuál es el patrón state?',
                        'El patrón de diseño State se utiliza cuando el comportamiento de un objeto cambia dependiendo del estado del mismo',
                    ]
                })
            ]

            buscador = new BuscadorMoodle({entradas})
        })

        it('Devuelve las respuestas que corresponden a los términos buscados', async () => {
            const respuestas = await buscador.buscar({busqueda: 'state'})
            respuestas.should.have.length(1)
            respuestas[0].resumen.should.be.equal('Cuál es el patrón state?')
            respuestas[0].link.should.be.equal('https://es.wikipedia.org/wiki/State_(patr%C3%B3n_de_dise%C3%B1o)')
        })

        it('No devuelve respuestas si no encuentra ninguna', () => {
            const respuestas = buscador.buscar({busqueda: 'sabor de la sal'})
            respuestas.should.eventually.be.empty()
        })

        it('No devuelve respuestas si no tiene entradas', () => {
            buscador = new BuscadorMoodle({entradas: []})
            const respuestas = buscador.buscar({busqueda: 'sabor de la sal'})
            respuestas.should.eventually.be.empty()
        });

        ['', ' ', '\n', '\n\r'].forEach(busqueda => {
            it('Eleva una excepción si la búsqueda está vacía', () => {
                return buscador.buscar({busqueda}).should.be.rejectedWith(BusquedaInvalidaError)
            })
        })

        it('Devuelve más de una entrada si hay más de una coincidencia', () => {
            const respuestas = buscador.buscar({busqueda: 'mono'})
            respuestas.should.eventually.have.length(2)
        });

        it('Limita la cantidad de respuestas si se proovee dicha opción', () => {
            const respuestas = buscador.buscar({busqueda: 'mono', max: 1})
            respuestas.should.eventually.have.length(1)
        });

        it('No eleva un error si la busqueda contiene modificadores de lunr', () => {
            return buscador.buscar({
                busqueda: 'una : a^as #'
            }).should.not.be.rejected()
        });
    })
})
