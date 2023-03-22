
build:
	@mkdocs build

serve:
	@mkdocs serve

docker-build:
	@docker run -v "${PWD}:/docs" squidfunk/mkdocs-material:latest build

docker-serve:
	@docker run -v "${PWD}:/docs" -p 8000:8000 squidfunk/mkdocs-material:latest

help:
	@echo "*******************************"
	@echo "Swerve Robotics Makefile Help"
	@echo ""
	@echo "  make build: build the site locally"
	@echo "              Requirements: python, mkdocs, and mkdocs-material"
	@echo ""
	@echo "  make serve: build the site and serve it locally"
	@echo "              Requirements: python, mkdocs, and mkdocs-material"
	@echo ""
	@echo "  make docker-build: build the site in a docker container"
	@echo "              Requirements: docker"
	@echo ""
	@echo "  make docker-serve: build the site and serve it from within the docker container"
	@echo "              Requirements: docker"
	@echo "*******************************"
