FROM alpine

# 替换为阿里云的镜像
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
# 调整时区为上海
RUN apk add -U tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 安装根证书
RUN apk update && apk upgrade && apk add ca-certificates && update-ca-certificates && rm -rf /var/cache/apk/*

# 安装网络调试工具
RUN apk add --no-cache \
    curl \