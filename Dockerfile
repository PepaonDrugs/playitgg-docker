
FROM ubuntu:focal

RUN mkdir /app
WORKDIR /app


RUN apt-get update && apt-get install -y ca-certificates


RUN update-ca-certificates

COPY . /app

RUN chmod 0755 /app/playit-x64

CMD ["/bin/sh", "-c", "/app/playit-x64 2>&1"]
