#!/usr/bin/env bash

set -euo pipefail

REPO=Vladimir-csp/app2unit

mkdir app2unit-latest
curl -s -H "Accept: application/vnd.github.v3+json" "https://api.github.com/repos/$REPO/tags" | jq '.[0].tarball_url' | xargs -n1 curl -sL | tar -xz -C app2unit-latest --strip-components=1

install -Dpm755 app2unit-latest/app2unit -t /usr/bin
rm -rf app2unit-latest

ln -sfT /usr/bin/app2unit /usr/bin/app2unit-open
ln -sfT /usr/bin/app2unit /usr/bin/app2unit-open-scope
ln -sfT /usr/bin/app2unit /usr/bin/app2unit-open-service
ln -sfT /usr/bin/app2unit /usr/bin/app2unit-term
ln -sfT /usr/bin/app2unit /usr/bin/app2unit-term-scope
ln -sfT /usr/bin/app2unit /usr/bin/app2unit-term-service
