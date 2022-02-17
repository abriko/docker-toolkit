.PHONY: build push

IMAGE_REPO = abriko/toolkit

define build_image
    docker build --pull -t $(IMAGE_REPO):$(1) $(1)/
endef

define push_image
    docker push $(IMAGE_REPO):$(1)
endef

build-base:
	$(call build_image,base)
	docker tag $(IMAGE_REPO):base $(IMAGE_REPO):latest

push-base:
	$(call push_image,base)
	docker push $(IMAGE_REPO):latest


build: build-base

push: push-base

all: build push