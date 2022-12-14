# playit.gg Docker image

[playit.gg](https://playit.gg/) tunnel service in a Docker Image

![Docker Pulls](https://img.shields.io/docker/pulls/pepaondrugs/playitgg-docker)

## Usage


Docker 
```yaml
docker run -d \
  --name playit-docker \
  -v playit-volume:/app \
  pepaondrugs/playitgg-docker:latest
```

For arm please use
```yaml
docker run -d \
  --name playit-docker \
  -v playit-volume:/app \
  pepaondrugs/playitgg-docker:v0.9.3-arm
```

For armv7 please use
```yaml
docker run -d \
  --name playit-docker \
  -v playit-volume:/app \
  pepaondrugs/playitgg-docker:v0.9.3-armv7   
```



Docker compose

```yaml
version: "3"

services:
  playit-docker:
    container_name: "playit-docker"
    image: pepaondrugs/playitgg-docker:latest
    volumes: 
      - playit-volume:/app
    restart: unless-stopped
```

Or Docker compose for arm

```yaml
version: "3"

services:
  playit-docker:
    container_name: "playit-docker"
    image: pepaondrugs/playitgg-docker:v0.9.3-arm
    volumes: 
      - playit-volume:/app
    restart: unless-stopped
```


If you want to claim the agent have a look at the log
```bash
docker logs playit-docker
```
```bash
link=https://playit.gg/claim/#######
```
