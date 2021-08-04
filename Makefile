IMAGE:=paulbrodner/jsonviewer

build:
	docker build -t $(IMAGE) .

start: stop
	docker run -d -p 8080:8080 --name jsonviewer $(IMAGE)

stop:
	@docker kill jsonviewer || echo Nothing to kill!
	@docker rm jsonviewer || echo Nothing to remove!


push:
	docker push $(IMAGE)