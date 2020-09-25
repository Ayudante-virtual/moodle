export default class TokenInvalidoError extends Error {
    constructor(message) {
        super(message);
        this.name = 'TokenInvalidoError';
    }
}
