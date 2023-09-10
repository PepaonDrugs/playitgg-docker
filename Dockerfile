FROM ubuntu:focal


RUN apt-get update && \
    apt-get install -y curl gnupg && \
    update-ca-certificates && \
    /usr/bin/curl -SsL https://playit-cloud.github.io/ppa/key.gpg | /usr/bin/apt-key add - && \
    /usr/bin/curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/ && \
    apt-get update

RUN apt-get install playit
CMD playit
