export default class ConexionNoInicializadaError extends Error {
    constructor(message) {
        super(message);
        this.name = 'ConexionNoInicializadaError';
    }
}
