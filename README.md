#  Playit Docker Image

Docker image for the [Playit](https://playit.gg/) tunnel service.

![Docker Pulls](https://img.shields.io/docker/pulls/pepaondrugs/playitgg-docker)

---

##  Usage

###  Basic Docker Run

```bash
docker run -d \
  --name playit-docker \
  -v playit-volume:/secret \
  --restart unless-stopped \
  pepaondrugs/playitgg-docker:latest
```

###  Architecture-Specific Images

* **ARM (64-bit):**

  ```bash
  docker run -d \
    --name playit-docker \
    -v playit-volume:/secret \
    --restart unless-stopped \
    pepaondrugs/playitgg-docker:arm
  ```

* **ARMv7 (32-bit):**

  ```bash
  docker run -d \
    --name playit-docker \
    -v playit-volume:/secret \
    --restart unless-stopped \
    pepaondrugs/playitgg-docker:armv7
  ```

### 👤 Custom User / Group

If you need to run the container as a specific user and group:

```bash
docker run -d \
  --name playit-docker \
  -v playit-volume:/secret \
  --restart unless-stopped \
  --build-arg="PLAYIT_USER_UID=1000" \
  --build-arg="PLAYIT_USER_GID=1000" \
  pepaondrugs/playitgg-docker:latest
```

---

##  Docker Compose

### Default

```yaml
version: "3"

services:
  playit-docker:
    container_name: playit-docker
    image: pepaondrugs/playitgg-docker:latest
    volumes:
      - playit-volume:/secret
    restart: unless-stopped

volumes:
  playit-volume:
    external: false
```

### For ARM (64-bit)

```yaml
image: pepaondrugs/playitgg-docker:arm
```

### For ARMv7 (32-bit)

```yaml
image: pepaondrugs/playitgg-docker:armv7
```

### Custom User / Group (Compose Build)

```yaml
version: "3"

services:
  playit-docker:
    build:
      args:
        PLAYIT_USER_UID: 1000
        PLAYIT_USER_GID: 1000
    container_name: playit-docker
    image: pepaondrugs/playitgg-docker:latest
    volumes:
      - playit-volume:/secret
    restart: unless-stopped

volumes:
  playit-volume:
    external: false
```

---

##  Claiming the Agent

Check the logs to find your agent claim link:

```bash
docker logs playit-docker
```

Look for:

```bash
link=https://playit.gg/claim/#######
```

---
## TODO:

- [ ] Move to Alpine or Distroless for optimized image



---

## 🛠️ Troubleshooting

If anything doesn't work, feel free to [open an issue](https://github.com/PepaonDrugs/playitgg-docker/issues).

