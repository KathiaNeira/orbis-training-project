include makefiles/task.mk
include makefiles/deploy-ghpages.mk

NAME_IMAGE = kathia/orbis-training-docker
DOCKER_TAG = 2.0.0
DOCKER_IMAGE = $(NAME_IMAGE):$(DOCKER_TAG)
NAME ?= kathia

install:
	docker run -v $(PWD):/app -w /app $(DOCKER_IMAGE) npm install

start:
	docker run -v $(PWD):/app -w /app -p 3030:3030 -p 35729:35729 $(DOCKER_IMAGE) npm start

release:
	docker run -v $(PWD):/app -w /app $(DOCKER_IMAGE) npm run release

greet:
	docker run -v $(PWD):/app -w /app $(DOCKER_IMAGE) sh resources/example.sh ${NAME}

recursos:
	echo 'Hola recursos!'