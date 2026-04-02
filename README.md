# Mindustry Beta Server Docker

<a href="https://github.com/jonathanlo411/mindustry-beta-server-docker/releases"><img src="https://img.shields.io/github/v/release/jonathanlo411/mindustry-beta-server-docker"></a>
<a href="https://github.com/jonathanlo411/mindustry-beta-server-docker/blob/main/LICENSE"><img src="https://img.shields.io/github/license/jonathanlo411/mindustry-beta-server-docker"></a>

Automated Docker builds of the latest Mindustry beta server. Builds run nightly and push to Docker Hub and GHCR.

## Quick Start

Pull and run with interactive console:
```bash
docker pull jonathanlo411/mindustry-beta-server:latest
docker run -it \
  -v mindustry-config:/opt/mindustry/config \
  -p 6567:6567/tcp \
  -p 6567:6567/udp \
  -p 6859:6859/tcp \
  --name mindustry \
  jonathanlo411/mindustry-beta-server:latest
```

Or with docker-compose (includes interactive mode):
```bash
docker-compose up
```

Run in background with interactive access:
```bash
docker run -itd \
  -v mindustry-config:/opt/mindustry/config \
  -p 6567:6567/tcp \
  -p 6567:6567/udp \
  -p 6859:6859/tcp \
  --name mindustry \
  jonathanlo411/mindustry-beta-server:latest
```

## Monitoring & Commands

View live server output:
```bash
docker logs -f mindustry
```

Connect to server console and send commands:
```bash
docker attach mindustry
```

Then type commands like:
```
help
status
host poly Attack
save
stop
```

To detach without stopping: `Ctrl+P` then `Ctrl+Q`

Stop server:
```bash
docker stop mindustry
docker rm mindustry
```

## Server Configuration

Server configuration is stored in the `mindustry-config` volume at `/opt/mindustry/config`. Edit config files on the host machine:

## Ports

- 6567 (TCP/UDP) - Game server
- 6859 (TCP) - Admin/query

## Registries

- Docker Hub: `docker pull jonathanlo411/mindustry-beta-server:latest`
- GHCR: `docker pull ghcr.io/jonathanlo411/mindustry-beta-server-docker:latest`
