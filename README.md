### Comando para construir imagen
```javascript
  docker build -t orbis-training-docker:0.1.0 .
```
### Pasos para subir una imagen
```javascript
  docker tag orbis-training-docker:0.1.0 janethugarcia/orbis-training-docker:0.1.0

  docker push janethugarcia/orbis-training-docker:0.1.0
```

### Cambio de versión
```js
  docker tag orbis-training-docker:0.1.0 janethugarcia/orbis-training-docker:0.2.0
```

### Comando para direccionar puerto por defecto
```js
  docker run -p "0.0.0.0:1080:80" janethugarcia/orbis-training-docker:1.0.0
```

### Comando para correr el docker-compose.yml
```javascript
  docker-compose up
```

### Comando para crear el volumen y especificar el directorio de trabajo
```javascript
  docker run -v $PWD/:/app -w /app kathia/orbis-training-docker:2.0.0 ls
```

### Se debe buildar la image
```javascript
  docker build -t orbis-training-docker:2.0.0 .
```

### Se debe comentar la línea en el dockerfile
```javascript
  #COPY ./preguntas.md ./intro.md ./
```
### Exponer los puertos 3030 y 35729 en la imagen de docker
```javascript
  docker run -p "1042:3030" -p "35729:35729" -v $PWD:/app -w /app kathia/orbis-training-docker:2.0.0 npm start 
```
### Nuevo puerto asignado.
```javascript
  http://localhost:1042/#1
```

### Usando la imagen de docker, ejecutar npm run release
```javascript
  docker run -v $PWD:/app -w /app kathia/orbis-training-docker:2.0.0 npm run release
```

### Creando una nueva red e identifico el nombre y le cambió de nombre
```javascript
  - docker run -it --network=ale node:10.10.0-slim curl http://localhost:1042/
  - docker run --name preguntas --network=ale -p "1042:3030" -p "35729:35729" -v $PWD:/app -w /app kathia/orbis-training-docker:2.0.0  npm start
  - docker run -it --network=ale node:10.10.0-slim curl preguntas:3030 
```

### Dar permiso al archivo
```javascript
  sudo chmod 0775 -R example.sh
```

### Mostrar contenido del archivo .sh
```javascript
  docker run -v $PWD:/app -w /app kathia/orbis-training-docker:2.0.0 ./example.sh
```

### Agregar una variable y pasar esa varible en el npm run
```javascript
docker run -e "name=Kathia" -v $PWD:/app -w /app kathia/orbis-training-docker:2.0.0 ./example.sh
```
### Mostrar en la console mensaje
```javascript
docker run -it --entrypoint=/bin/echo kathia/orbis-training-docker:2.0.0 Ejecutando contenedor
```
