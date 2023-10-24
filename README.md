# A better image is already available.
This repository is no longer necessary.

If you are initially setup hath docker.

**Create work directory manually**

```bash
mkdir -p [H@H Path]/{cache,data,download} && \
echo "[Client ID]-[Client Key]" > [H@H Path]/data/client_login
```

**Start a container through the command line**

`[Port]` => Port for Incoming Connections

```bash
docker run \
  --name hath \
  -w /hath \
  -p [Port] \
  -v [H@H Path]:/hath \
  --restart unless-stopped \
  --stop-timeout 600 \
  -d \
  ghcr.io/james58899/hath-rust
```

**or docker compose**

```
[directory for compose]
|- docker-compose.yml
|- hath
  |- cache
  |- data
    |- client_login
  |- download
```

```yaml
services:
  hath:
    container_name: hath
    image: ghcr.io/james58899/hath-rust
    working_dir: /hath
    ports: - [Port]
    volumes: - `pwd`/hath:/hath
    restart: unless-stopped
```

# hath-rust

hath-rust: https://github.com/james58899/hath-rust
