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