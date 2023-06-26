#FROM ubuntu/focal:latest
FROM ubuntu:focal
RUN mkdir /app
WORKDIR '/app'
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates
RUN apt-get isntall -y curl 
RUN curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add - && curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list
RUN apt install playit
COPY playit-x64 /app

#RUN chmod a+x playit-0.9.3
RUN chmod 0755 /app/playit-x64
CMD playit
