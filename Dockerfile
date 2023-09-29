FROM ubuntu:focal
RUN mkdir /app
WORKDIR '/app'
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates


COPY . /app

RUN chmod 0755 /app/playit-x64

RUN chmod 0755 /app/run_playit.sh

CMD chmod 0755 /app/playit-x64
CMD /app/run_playit.sh
