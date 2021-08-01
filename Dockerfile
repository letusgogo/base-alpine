FROM alpine

# 替换为阿里云的镜像
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
# 调整时区
RUN apk add -U tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


