FROM alpine:latest

RUN apk add --no-cache bash coreutils

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

VOLUME ["/conf"]

ENTRYPOINT ["/entrypoint.sh"]
CMD ["sh"]
