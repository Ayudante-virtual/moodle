import {describe, it, before} from "mocha";
import chai from "chai"
import chaiHttp from "chai-http";
import app from "../../src/app"

let expect
before(() => {
    chai.use(chaiHttp)
    expect = chai.expect;
})

describe('Buscador', () => {
    describe('Actualizar', () => {
        it('Devuelve 4040 si no hay id de cliente', () => {
            chai.request(app)
                .put('/v1/cliente//buscador')
                .end((err, res) => {
                    expect(res).to.have.status(404)
                })
        })

        it('Devuelve un error si no se provee la url', () => {
            chai.request(app)
                .put('/v1/cliente/T03659754/buscador')
                .end((err, res) => {
                    expect(res).to.have.status(400)
                    expect(res.body).to.have.property('error').to.equal('ArgumentoRequeridoError')
                })
        })

        it('Devuelve un error si no se conecta con moodle', (done) => {
            chai.request(app)
                .put('/v1/cliente/T03659754/buscador')
                .send({
                    url: "nada",
                    token: "nada"
                })
                .end((err, res) => {
                    expect(res).to.have.status(400)
                    expect(res.body).to.have.property('error').to.equal('ServidorMoodleNoDisponibleError')
                    done()
                })
        })


        it('Devuelve un error si no se provee el foro', (done) => {
            chai.request(app)
                .put('/v1/cliente/T03659754/buscador')
                .send({
                    url: process.env.MOODLE_URL,
                    token: process.env.MOODLE_TOKEN
                })
                .end((err, res) => {
                    expect(res).to.have.status(400)
                    done()
                })
        })

        it('Devuelve un error si no existe el foro', (done) => {
            chai.request(app)
                .put('/v1/cliente/T03659754/buscador')
                .send({
                    url: process.env.MOODLE_URL,
                    token: process.env.MOODLE_TOKEN,
                    idForo: 100
                })
                .end((err, res) => {
                    expect(res).to.have.status(400)
                    expect(res.body).to.have.property('error').to.equal('ForoInexistenteError')
                    done()
                })
        })

        it('Devuelve 200 si se conecta correctamente con token', (done) => {
            chai.request(app)
                .put('/v1/cliente/T03659754/buscador')
                .send({
                    url: process.env.MOODLE_URL,
                    token: process.env.MOODLE_TOKEN,
                    idForo: process.env.MOODLE_FORUM_ID
                })
                .end((err, res) => {
                    expect(res).to.have.status(200)
                    done()
                })
        })

        it('Devuelve 200 si se conecta correctamente con usuario y contraseña', (done) => {
            chai.request(app)
                .put('/v1/cliente/T03659754/buscador')
                .send({
                    url: process.env.MOODLE_URL,
                    user: process.env.MOODLE_USER,
                    password: process.env.MOODLE_PASSWORD,
                    idForo: process.env.MOODLE_FORUM_ID
                })
                .end((err, res) => {
                    expect(res).to.have.status(200)
                    done()
                })
        })
    })
})
