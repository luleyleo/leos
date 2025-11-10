#!/usr/bin/env bash

set -euo pipefail

REPO=noctalia-dev/noctalia-greet
QS_CONFIG=/etc/xdg/quickshell

mkdir -p "$QS_CONFIG"

git clone --depth 1 "https://github.com/$REPO.git" "$QS_CONFIG/noctalia-greet"
rm -rf "$QS_CONFIG/noctalia-greet/.git"
