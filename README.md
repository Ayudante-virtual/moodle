# Integración con Moodle

### Moodle

Se incluye una imagen de docker con la misma versión de moodle que utiliza FIUBA. Se puede utilizar para hacer pruebas sin emplear el servidor de moodle FIUBA.

Luego de ejecutar `docker-compose up -d`, se puede acceder en [localhost:8080](http://localhost:8080/).

Las credenciales de acceso para esta imagen son:
 - usuario: `user`
 - contraseña: `password`

Luego de iniciar la imagen, para utilizar la api de Moodle localmente es necesario ir a `Site Administration -> Mobile App -> Enable web services for mobile devices`. Luego se puede consultar la documentación de cada "función" en `Site Administration -> Plugins -> Web services -> API Documentation`. Más información [acá](https://docs.moodle.org/dev/Web_services).
