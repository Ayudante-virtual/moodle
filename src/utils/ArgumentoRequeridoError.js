export default class ArgumentoRequeridoError extends Error {
    constructor(message) {
        super(message);
        this.name = 'ArgumentoRequeridoError';
    }
}
