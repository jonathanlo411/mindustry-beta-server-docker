#!/bin/sh
set -e

# Ensure log directory exists
mkdir -p /opt/mindustry/config/logs

# Run server
exec java -jar /opt/mindustry/server-release.jar "$@"
