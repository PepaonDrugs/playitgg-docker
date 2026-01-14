#  Playit Docker Image

Docker image for the [Playit](https://playit.gg/) tunnel service.

![Docker Pulls](https://img.shields.io/docker/pulls/pepaondrugs/playitgg-docker)

---

# Note!

If you updated to v0.17.1 or later, please update your Docker volume to point to `/root` **in the container**.  
This is where the persistent Playit secret is stored.  
Otherwise, you may need to reauthenticate between updates.



##  Usage

###  Basic Docker Run

```bash
docker run -d \
  --name playit-docker \
  -v playit-volume:/root \
  --restart unless-stopped \
  pepaondrugs/playitgg-docker:latest
```

###  Architecture-Specific Images

* **ARM (64-bit):**

  ```bash
  docker run -d \
    --name playit-docker \
    -v playit-volume:/root \
    --restart unless-stopped \
    pepaondrugs/playitgg-docker:arm
  ```

* **ARMv7 (32-bit):**

  ```bash
  docker run -d \
    --name playit-docker \
    -v playit-volume:/root \
    --restart unless-stopped \
    pepaondrugs/playitgg-docker:armv7
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
      - playit-volume:/root
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

- Create an issue for suggestions



---

## 🛠️ Troubleshooting

If anything doesn't work, feel free to [open an issue](https://github.com/PepaonDrugs/playitgg-docker/issues).

