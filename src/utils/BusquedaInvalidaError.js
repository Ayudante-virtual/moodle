export default class BusquedaInvalidaError extends Error {
    constructor(message) {
        super(message);
        this.name = 'BusquedaInvalidaError';
    }
}
