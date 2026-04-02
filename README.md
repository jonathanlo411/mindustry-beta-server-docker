# Mindustry Beta Server Docker

<a href="https://github.com/jonathanlo411/mindustry-beta-server-docker/releases"><img src="https://img.shields.io/github/v/release/jonathanlo411/mindustry-beta-server-docker"></a>
<a href="https://github.com/jonathanlo411/mindustry-beta-server-docker/blob/main/LICENSE"><img src="https://img.shields.io/github/license/jonathanlo411/mindustry-beta-server-docker"></a>

Automated Docker builds of the latest Mindustry beta server. Builds run nightly and push to Docker Hub and GHCR.

## Quick Start

Pull and run:
```bash
docker pull jonathanlo411/mindustry-beta-server:latest
docker run -d \
  -v mindustry-config:/opt/mindustry/config \
  -p 6567:6567/tcp \
  -p 6567:6567/udp \
  -p 6859:6859/tcp \
  jonathanlo411/mindustry-beta-server:latest
```

Or with docker-compose:
```bash
docker-compose up -d
```

## Commands

```bash
docker exec mindustry help
docker exec mindustry status
docker exec mindustry host <mapname> [mode]
docker logs mindustry
docker stop mindustry
```

## Ports

- 6567 (TCP/UDP) - Game server
- 6859 (TCP) - Admin/query

## Registries

- Docker Hub: `docker pull jonathanlo411/mindustry-beta-server:latest`
- GHCR: `docker pull ghcr.io/jonathanlo411/mindustry-beta-server-docker:latest`
