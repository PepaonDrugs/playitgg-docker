FROM ubuntu:focal
RUN mkdir /app
WORKDIR '/app'
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates

RUN wget https://github.com/playit-cloud/playit-agent/releases/download/v0.15.12/playit-linux-amd64
COPY playit-linux-amd64 /app

RUN chmod 0755 /app/playit-linux-amd64


CMD chmod 0755 /app/playit-linux-amd64
CMD /app/playit-linux-amd64 -s
