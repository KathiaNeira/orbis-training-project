# Ejercicio 1
Capacitación: Git, bash y docker

Integrantes:
- Victor Alex Gerardo Cunya Tejada
- Juan Carlos Salvador García

Scrum Master:
- Steven Ortiz

### ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
Es necesario para poder listarlo ya que cuando construimos la imagen con -it entramos al contenedor y lo podemos ver encendido.
El contenedor se construirá pero docker lo apagará ya que no tiene ninguna sentencia para ejecutar.

### ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
Para listar el contenido dentro del contenedor.

### ¿Cuál es la diferencia entre docker ps y docker ps -a?
Con docker ps lista todos los contenedores que están encendidos y docker ps -a lista todos los contenedores que se crearon. 

### Comando para ejecutar el contenedor
docker run -it orbis-training-docker:0.3.0 bash