# 基于轻量 Linux 镜像
FROM alpine:latest

# 设置工作目录
WORKDIR /app

# 复制 entrypoint 到镜像
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 允许挂载 /conf 配置目录
VOLUME ["/conf"]

# 默认启动命令
ENTRYPOINT ["/entrypoint.sh"]
CMD ["sh"]
