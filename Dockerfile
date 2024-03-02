FROM ubuntu:focal
RUN mkdir /app
WORKDIR '/app'
RUN apt-get update
RUN apt-get install ca-certificates -y wget
RUN update-ca-certificates

RUN wget https://github.com/playit-cloud/playit-agent/releases/download/v0.15.13/playit-linux-amd64 -O /app/playit-linux-amd64


RUN chmod 0755 /app/playit-linux-amd64


CMD chmod 0755 /app/playit-linux-amd64
CMD /app/playit-linux-amd64 -s
