#!/usr/bin/env sh

PUID=${PUID:-6006}
PGID=${PGID:-6006}

groupmod -o -g "$PGID" premiumizer || true
usermod -o -u "$PUID" premiumizer || true

chown -R premiumizer:premiumizer /conf || true

# Allow write access on downloaded files to group and others
umask 0000

chmod +x /app/aria2.sh

screen -Sdm NewAName /app/aria2.sh

exec su-exec premiumizer "$@"
