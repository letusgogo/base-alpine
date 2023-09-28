
docker-build:
	docker build ./ -t registry.cn-hangzhou.aliyuncs.com/helloworldyu/base-alpine:latest

docker-push: docker-build
	docker push registry.cn-hangzhou.aliyuncs.com/helloworldyu/base-alpine:latest

