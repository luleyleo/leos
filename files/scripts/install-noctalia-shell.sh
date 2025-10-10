#!/usr/bin/env bash

set -euo pipefail

REPO=noctalia-dev/noctalia-shell
QS_CONFIG=/etc/xdg/quickshell

mkdir -p /etc/xdg/quickshell

curl -s -H "Accept: application/vnd.github.v3+json" "https://api.github.com/repos/$REPO/releases/latest" | jq '.assets[0].browser_download_url' | xargs -n1 curl -sL | tar -xz -C "$QS_CONFIG" --transform=s/noctalia-release/noctalia-shell/
