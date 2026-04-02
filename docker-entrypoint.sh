#!/bin/sh
set -e

# Run server as sheep user
exec su-exec sheep:sheep java -jar /opt/mindustry/server-release.jar "$@"
