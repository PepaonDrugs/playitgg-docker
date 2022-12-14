#FROM ubuntu/focal:latest
FROM ubuntu:focal
RUN mkdir /app
WORKDIR '/app'
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates
# Install Nodejs
#COPY playit-x64 /app
COPY . /app
#RUN chmod a+x playit-0.9.3
RUN chmod 0755 /app/playit-x64
CMD /app/playit-x64
