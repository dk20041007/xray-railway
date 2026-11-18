#!/bin/sh
set -e
UUID="${UUID:-00000000-0000-0000-0000-000000000000}"
PORT="${PORT:-8080}"
sed -e "s|__UUID__|$UUID|g" -e "s|__PORT__|$PORT|g" /etc/xray/config.template.json > /etc/xray/config.json
exec /usr/local/bin/xray run -c /etc/xray/config.json
