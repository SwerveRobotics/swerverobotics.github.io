
build:
	@docker run -v "${PWD}:/docs" squidfunk/mkdocs-material:latest build

serve:
	@docker run -v "${PWD}:/docs" -p 8000:8000 squidfunk/mkdocs-material:latest

help:
	@echo "*******************************"
	@echo "Swerve Robotics Makefile Help"
	@echo "  make build: build the site in a docker container"
	@echo "  make serve: build the site and serve it from within the docker container"
	@echo "*******************************"
