.PHONY: build push

IMAGE_REPO = abriko/toolkit

define build_image
    docker build $(1) -t $(IMAGE_REPO):$(2) -f Dockerfile_$(2) .
endef

define push_image
    docker push $(IMAGE_REPO):$(1)
endef

build-base:
	$(call build_image,--pull,base)
	docker tag $(IMAGE_REPO):base $(IMAGE_REPO):latest

push-base:
	$(call push_image,base)
	docker push $(IMAGE_REPO):latest

build-k8s:
	$(call build_image,,k8s)

push-k8s:
	$(call push_image,k8s)

build-iac:
	$(call build_image,,iac)

push-iac:
	$(call push_image,iac)

build: build-base build-k8s build-iac

push: push-base push-k8s push-iac

all: build push