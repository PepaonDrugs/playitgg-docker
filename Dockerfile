FROM ubuntu:jammy

RUN apt-get update
RUN apt-get install curl gnupg

RUN apt-get install ca-certificates -y
RUN update-ca-certificates

RUN curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add -
RUN curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/
RUN apt-get update

RUN apt-get install playit
CMD playit
