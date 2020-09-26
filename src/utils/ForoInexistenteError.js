export default class ForoInexistenteError extends Error {
    constructor(message) {
        super(message);
        this.name = 'ForoInexistenteError';
    }
}
