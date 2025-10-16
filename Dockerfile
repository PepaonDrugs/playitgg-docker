FROM alpine:latest

ARG PLAYIT_USER_UID="1000"
ARG PLAYIT_USER_GID="1000"

RUN mkdir -p /app /secret && \
    addgroup -g ${PLAYIT_USER_GID} playit && \
    adduser -D -u ${PLAYIT_USER_UID} -G playit playit && \
    apk add --no-cache ca-certificates wget && \
    update-ca-certificates && \
    wget https://github.com/playit-cloud/playit-agent/releases/latest/download/playit-linux-amd64 -O /app/playit-linux-amd64 && \
    chown -R playit:playit /app /secret && \
    chmod 0755 /app/playit-linux-amd64

WORKDIR /secret
USER playit

CMD ["/app/playit-linux-amd64", "-s"]
