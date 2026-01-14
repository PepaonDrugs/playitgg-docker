FROM alpine:latest as build

RUN apk add --no-cache wget ca-certificates
RUN update-ca-certificates

RUN mkdir /app && wget https://github.com/playit-cloud/playit-agent/releases/latest/download/playit-linux-amd64 \
    -O /app/playit-linux-amd64 && chmod 0755 /app/playit-linux-amd64


FROM gcr.io/distroless/static-debian13

COPY --from=build /app /app

CMD ["/app/playit-linux-amd64", "-s"]
