#!/usr/bin/env bash

set -oue pipefail

echo "Installing Zed"

prefix=/usr/local
src="https://zed.dev/api/releases/stable/latest/zed-linux-x86_64.tar.gz"

curl -L "$src" >zed.tar.gz

mkdir "zed"
tar -xvf zed.tar.gz -C zed
rm ./zed/zed.app/licenses.md

mkdir -p "$prefix"
cp -r ./zed/zed.app/* "$prefix"

rm -rf ./zed
rm zed.tar.gz

echo "Finished installing Zed"
