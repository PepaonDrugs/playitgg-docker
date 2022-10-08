#FROM aarch64/alpine:latest
FROM ubuntu:bionic
RUN mkdir /app
WORKDIR '/app'
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates
#COPY playit-aarch64-0.4.6 /app
COPY . /app
#RUN chmod a+x playit-aarch64-0.4.6
RUN chmod 0755 /app/playit-0.8.3-beta-aarch64
CMD /app/playit-0.8.3-beta-aarch64
#CMD apk add --no-cache --update curl
#CMD curl -L https://playit.gg/downloads/playit-aarch64-0.4.6 --output /playit-aarch64-0.4.6
#CMD chmod +x /playit-aarch64-0.4.6
#CMD [[ -f /playit-aarch64-0.4.6 ]] && echo "This file exists!"
#CMD /playit-aarch64-0.4.6
