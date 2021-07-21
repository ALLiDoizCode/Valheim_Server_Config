#!/bin/bash

docker run -d \
    --name valheim-server \
    -p 2456-2458:2456-2458/udp \
    -e NAME="Nerds Only" \
    -e WORLD="My World" \
    -e PASSWORD="boomstick" \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=America/New_York \
    -e AUTO_UPDATE=1 \
    -e AUTO_UPDATE_SCHEDULE="5 8 * * *" \
    -e AUTO_BACKUP=1 \
    -e AUTO_BACKUP_DAYS_TO_LIVE=1 \
    -e AUTO_BACKUP_PAUSE_WITH_NO_PLAYERS=1 \
    -e WEBHOOK_URL="https://discord.com/api/webhooks/867487095710679060/XSSrRW6F5jr4-OWiLGHctSzfkfisj2Vevl7Etd11GCubDe0eIIRwpkXCeIwrOsWUnM2i" \
    -v ./valheim/saves:/home/steam/.config/unity3d/IronGate/Valheim \
    -v ./valheim/backups:/home/steam/backups \
    -v ./valheim/server:/home/steam/valheim \
    mbround18/valheim-docker