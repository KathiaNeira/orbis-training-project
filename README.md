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

