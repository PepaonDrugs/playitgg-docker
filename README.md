# playit.gg Docker image

[playit.gg](https://playit.gg/) tunnel service in a Docker Image

![Docker Pulls](https://img.shields.io/docker/pulls/pepaondrugs/playitgg-docker)

## Usage


Docker 
```bash
docker run -d --name playit-docker pepaondrugs/playitgg-docker
```
Docker compose

```yaml
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
