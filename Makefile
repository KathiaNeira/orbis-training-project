include Makefile-task.mk

NAME_IMAGE = orbis-training-docker
DOCKER_TAG = 2.0.0
DOCKER_IMAGE = $(NAME_IMAGE):$(DOCKER_TAG)
NAME ?= kathia

install: 
	npm install

start: 
	npm start

release: 
	npm run

greed:
	docker run -v $(PWD)/:/app -w /app/resources -e "name=$(NAME)" kathia/$(DOCKER_IMAGE) ./example.sh

recursos:
	@echo 'Hola recursos!'