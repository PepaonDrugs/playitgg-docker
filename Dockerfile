FROM ubuntu:focal
RUN mkdir /app
WORKDIR '/app'
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates


COPY playit-x64 /app

RUN chmod 0755 /app/playit-x64


CMD chmod 0755 /app/playit-x64
CMD /app/playit-x64
