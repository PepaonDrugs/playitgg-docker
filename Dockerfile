#FROM ubuntu/focal:latest
FROM ubuntu:focal
WORKDIR '/'
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates
# Install Nodejs
#COPY playit-x64 /app
COPY playit-x64 /a
#RUN chmod a+x playit-0.9.3
RUN chmod 0755 /playit-x64
CMD /playit-x64
