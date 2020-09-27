export default class AutenticacionInvalidaError extends Error {
    constructor(message) {
        super(message);
        this.name = 'AutenticacionInvalidaError';
    }
}
