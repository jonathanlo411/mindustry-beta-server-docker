#!/bin/sh
set -e

# Ensure required directories exist and have correct permissions
mkdir -p /opt/mindustry/config/logs
mkdir -p /home/sheep/.local/share/Mindustry/crashes
chown -R sheep:sheep /opt/mindustry /home/sheep

# Run server as sheep user and wait for it
su-exec sheep:sheep java -jar /opt/mindustry/server-release.jar "$@"
