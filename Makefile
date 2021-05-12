.PHONY: containers

IMAGE_ORG=ghcr.io/anxs/scaffolding
IMAGE_VSN=latest
TARGETS:=$(shell ls -1 docker)

containers: $(TARGETS)
$(TARGETS):
	docker build \
		-t $(IMAGE_ORG)/$@:$(IMAGE_VSN) \
		-f docker/$@ \
		.
