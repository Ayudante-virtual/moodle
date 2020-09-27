# Integración con Moodle

[![Build Status](https://travis-ci.com/ayudante-virtual/integracion-moodle.svg?branch=master)](https://travis-ci.com/ayudante-virtual/integracion-moodle)

## Comandos disponibles

#### `docker-compose up -d`

Inicia el ambiente de desarrollo:
 - Moodle en [localhost:8080](http://localhost:8080/)
 - Aplicación en [localhost:5000](http://localhost:5000/)

### Moodle

Se incluye una imagen de docker con la misma versión de moodle que utiliza FIUBA. Se puede utilizar para hacer pruebas sin emplear el servidor de moodle FIUBA.

Luego de ejecutar `docker-compose up -d`, se puede acceder en [localhost:8080](http://localhost:8080/).

Las credenciales de acceso para esta imagen son:
 - usuario: `user`
 - contraseña: `password`

### Aplicación

Se compone de un único endpoint en `/v1/consultas?busqueda=<texto de búsqueda>`. Adicionalmente se puede incluir parámetro `max` para limitar la cantidad de respuestas en una cantidad distinta de 3 (por defecto).
