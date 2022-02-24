.PHONY: build push box-build box-push sa-build sa-push

IMAGE_REPO = abriko/toolkit
BOXS = base k8s iac
STAND_ALONE = kubectl kustomize k9s

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

sa-build:
	@for v in $(STAND_ALONE) ; do \
        docker build -t $(IMAGE_REPO):$$v stand-alone/$$v/ ; \
    done

sa-push:
	@for v in $(STAND_ALONE) ; do \
        docker push $(IMAGE_REPO):$$v ; \
    done

build: box-build sa-build

push: box-push sa-push

all: box-build box-push