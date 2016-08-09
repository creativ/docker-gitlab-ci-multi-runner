all: build

build:
	@docker build --tag=creative/docker-gitlab-ci-multi-runner .

release: build
	@docker build --tag=creative/docker-gitlab-ci-multi-runner:$(shell cat VERSION) .
