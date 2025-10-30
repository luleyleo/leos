#!/usr/bin/env bash

set -euo pipefail

REPO=Vladimir-csp/app2unit

mkdir app2unit
curl -s -H "Accept: application/vnd.github.v3+json" "https://api.github.com/repos/$REPO/tags" | jq '.[0].tarball_url' | xargs -n1 curl -sL | tar -xz -C app2unit --strip-components=1
cd app2unit
make install-bin
cd ..
rm -rf app2unit
