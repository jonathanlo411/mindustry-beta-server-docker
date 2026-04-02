FROM alpine:latest AS builder

ARG tag_name

WORKDIR /build

RUN apk add --no-cache wget && \
    wget "https://github.com/Anuken/Mindustry/releases/download/${tag_name}/server-release.jar" -O server-release.jar && \
    wget "https://github.com/Anuken/Mindustry/releases/download/${tag_name}/dependencies.jar" -O dependencies.jar

FROM alpine:latest

ENV CONFIG=/opt/mindustry/config
WORKDIR /opt/mindustry

RUN \
    apk add --no-cache openjdk8-jre && \
    mkdir -p /opt/mindustry/config/logs

COPY --from=builder /build/server-release.jar /opt/mindustry/server-release.jar
COPY --from=builder /build/dependencies.jar /opt/mindustry/dependencies.jar
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

VOLUME /opt/mindustry/config

EXPOSE 6567
EXPOSE 6859

ENTRYPOINT ["/docker-entrypoint.sh"]
