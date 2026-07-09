#!/usr/bin/env bash
set -euo pipefail

VERSION="${1:-v0.2.0}"
OUT="ESPHome-Boiler-Monitor-${VERSION}.zip"

zip -r "$OUT" .   -x "firmware/secrets.yaml"   -x ".git/*"   -x ".esphome/*"   -x "*.zip"

echo "Created $OUT"
