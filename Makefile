.PHONY: build push box-build box-push

IMAGE_REPO = abriko/toolkit
BOXS = base k8s iac

box-build:
	@for v in $(BOXS) ; do \
        docker build -t $(IMAGE_REPO):$$v -f box/Dockerfile_$$v box/ ; \
    done

box-push:
	@for v in $(BOXS) ; do \
        docker push $(IMAGE_REPO):$$v ; \
    done
	
	docker tag $(IMAGE_REPO):base $(IMAGE_REPO):latest
	docker push $(IMAGE_REPO):latest

build: box-build

push: box-push

all: box-build box-push