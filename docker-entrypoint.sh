#!/bin/sh
set -e

# Switch to sheep user and run the server
exec su-exec sheep:sheep java -jar /opt/mindustry/server-release.jar "$@"
