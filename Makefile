include makefiles/task.mk
include makefiles/deploy-ghpages.mk

NAME_IMAGE = kathia/orbis-training-docker
DOCKER_TAG = 2.0.0
DOCKER_IMAGE = $(NAME_IMAGE):$(DOCKER_TAG)
NAME ?= kathia

install:
	docker run --volumes-from workspace -w /app $(DOCKER_IMAGE) npm install

start:
	docker run --volumes-from workspace -w /app -p 3030:3030 -p 35729:35729 $(DOCKER_IMAGE) npm start

release:
	docker run --volumes-from workspace -w /app $(DOCKER_IMAGE) npm run release

greet:
	docker run --volumes-from workspace -w /app $(DOCKER_IMAGE) sh resources/example.sh ${NAME}

curl:
	echo 'Hola recursos!'

project-workspace:
    docker create -v /app/ --name workspace alpine
