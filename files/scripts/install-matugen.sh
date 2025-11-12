#!/usr/bin/env bash

set -euo pipefail

REPO=InioX/matugen
TARGET=/usr/bin/

curl -s -H "Accept: application/vnd.github.v3+json" "https://api.github.com/repos/$REPO/releases/latest" | jq '.assets[0].browser_download_url' | xargs -n1 curl -sL | tar -xz -C "$TARGET" matugen
