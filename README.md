# playit.gg Docker image

[playit.gg](https://playit.gg/) tunnel service in a Docker Image



## Usage


Docker 
```bash
docker run -d --name playit-docker -v playit-volume:/home/container pepaondrugs/playitgg-docker
```
Docker compose

```bash
version: "3"

services:
  playit-docker:
    container_name: "playit-docker"
    image: pepaondrugs/playitgg-docker:latest
    restart: unless-stopped
```

If you want to claim the agent have a look at the log
```bash
docker logs playit-docker
```
```bash
link=https://playit.gg/claim/#######
```
