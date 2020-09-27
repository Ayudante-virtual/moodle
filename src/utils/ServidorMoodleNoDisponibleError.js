export default class ServidorMoodleNoDisponibleError extends Error {
    constructor(message) {
        super(message);
        this.name = 'ServidorMoodleNoDisponibleError';
    }
}
