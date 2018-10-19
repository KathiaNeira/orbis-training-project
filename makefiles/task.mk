
build:
	docker build -t orbis-training-docker:0.1.0 .

push:
	@make login
	docker push kathia/orbis-training-docker:0.1.0


up:
	docker-compose up

login:
	docker login