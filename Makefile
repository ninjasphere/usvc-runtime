SHA1:=$(shell git rev-parse --short HEAD | tr -d '\n')
IMAGE?=ninjasphere/usvc-runtime
image:
	docker build -t $(IMAGE) .

push:
	docker push $(IMAGE)

push-tag:
	docker push $(IMAGE):$(SHA1)

tag: image
	docker tag -f $(IMAGE) $(IMAGE):$(SHA1)

