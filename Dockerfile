#FROM aarch64/alpine:latest
FROM ubuntu:focal
RUN mkdir /app
WORKDIR '/app'
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates
ENV NODE_VERSION=16.13.0
RUN apt install -y curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
#COPY playit-aarch64-0.4.6 /app
COPY . /app
#RUN chmod a+x playit-aarch64-0.4.6
RUN chmod 0755 /app/playit-0.9.3
CMD /app/playit-0.9.3
#CMD apk add --no-cache --update curl
#CMD curl -L https://playit.gg/downloads/playit-aarch64-0.4.6 --output /playit-aarch64-0.4.6
#CMD chmod +x /playit-aarch64-0.4.6
#CMD [[ -f /playit-aarch64-0.4.6 ]] && echo "This file exists!"
#CMD /playit-aarch64-0.4.6
