
docker-build:
	docker buildx build --platform linux/amd64 -t registry.cn-hangzhou.aliyuncs.com/helloworldyu/base-alpine:latest . --load

docker-push: docker-build
	docker buildx build --platform linux/amd64 -t registry.cn-hangzhou.aliyuncs.com/helloworldyu/base-alpine:latest . --push

