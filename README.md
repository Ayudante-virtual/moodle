# Integración con Moodle

[![Build Status](https://travis-ci.com/ayudante-virtual/integracion-moodle.svg?branch=master)](https://travis-ci.com/ayudante-virtual/integracion-moodle)

## Comandos disponibles

#### `docker-compose up -d`

Inicia el ambiente de desarrollo:
 - Moodle en [localhost:8080](http://localhost:8080/)
 - Aplicacin en [localhost:5000](http://localhost:5000/)

### Moodle

Se incluye una imagen de docker con la misma versión de moodle que utiliza FIUBA. Se puede utilizar para hacer pruebas sin emplear el servidor de moodle FIUBA.

Luego de ejecutar `docker-compose up -d`, se puede acceder en [localhost:8080](http://localhost:8080/).

Las credenciales de acceso para esta imagen son:
 - usuario: `user`
 - contraseña: `password`

Luego de iniciar la imagen, para utilizar la api de Moodle localmente es necesario ir a `Site Administration -> Mobile App -> Enable web services for mobile devices`. Luego se puede consultar la documentación de cada "función" en `Site Administration -> Plugins -> Web services -> API Documentation`. Más información [acá](https://docs.moodle.org/dev/Web_services).

### Aplicación

Se compone de un único endpoint en `/v1/consultas?busqueda=<texto de búsqueda>`. Adicionalmente se puede incluir paráetro `max` para limitar la cantidad de respuestas en una cantidad distinta de 3 (por defecto).
