FROM ubuntu:focal
RUN mkdir /app
WORKDIR /app
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates
COPY . /app
RUN chmod 0755 /app/playit-x64
CMD /bin/sh -c "/app/playit-x64 | tee /app/playit-log.txt && sleep 5 && cat /app/playit-log.txt"
