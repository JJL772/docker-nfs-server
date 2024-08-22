REPOSITORY = ghcr.io/normal-computing
IMAGE = $(REPOSITORY)/nfs-server

all: image

image:
	docker build -t $(IMAGE):latest .

.PHONY: all image
