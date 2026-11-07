#!/bin/sh
# Turns the add-on's Configuration tab (/data/options.json) into KIOSK_*
# environment variables, then starts Kiosk. Empty fields are skipped so
# config.yaml can still supply them; lists become comma-separated.
set -e

OPTIONS=/data/options.json

if [ -f "$OPTIONS" ]; then
  eval "$(jq -r '
    to_entries[]
    | select(.value != null and .value != "" and .value != [])
    | "export KIOSK_\(.key | ascii_upcase)=\(
        if (.value | type) == "array" then (.value | join(",")) else (.value | tostring) end
        | @sh)"
  ' "$OPTIONS")"
fi

exec /kiosk
