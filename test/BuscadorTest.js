import {describe, it, beforeEach} from "mocha";
import EntradaMoodle from "../src/moodle/EntradaMoodle";
import BuscadorMoodle from "../src/moodle/BuscadorMoodle";

describe('BuscadorMoodle', () => {
    describe('Buscar', () => {
        let buscador;

        beforeEach(() => {
            const entradas = [
                new EntradaMoodle({
                    id: 1,
                    link: 'https://mascotas.hola.com/animalescuriosos/20171130/donde-viven-los-monos/',
                    asunto: '¿Dónde viven los monos?',
                    consulta: 'Hola, quisiera saber donde viven los monos',
                    respuestas: [
                        'Hola, quisiera saber donde viven los monos',
                        'Naturalmente viven en África, Asia y el sur de América',
                        'Son originarios de África, Asia y el sur de América'
                    ]
                }),
                new EntradaMoodle({
                    id: 2,
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

        it('Devuelve las respuestas que corresponden a los términos buscados', () => {
            const respuestas = buscador.buscar('state')
            respuestas.should.have.length(1)
            respuestas[0].resumen.should.be.equal('Cuál es el patrón state?')
            respuestas[0].link.should.be.equal('https://es.wikipedia.org/wiki/State_(patr%C3%B3n_de_dise%C3%B1o)')
        })

        it('No devuelve respuestas si no encuentra ninguna', () => {
            const respuestas = buscador.buscar('sabor de la sal')
            respuestas.should.be.empty()
        })

        it('No devuelve respuestas si no tiene entradas', () => {
            buscador = new BuscadorMoodle({entradas: []})
            const respuestas = buscador.buscar('sabor de la sal')
            respuestas.should.be.empty()
        })
    })
})
