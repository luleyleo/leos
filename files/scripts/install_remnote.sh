#!/usr/bin/env bash

set -oue pipefail

echo "Installing RemNote"

prefix=/usr
binaries=$prefix/bin
applications=$prefix/share/applications
icons=$prefix/share/icons

app=remnote
src="https://backend.remnote.com/desktop/linux"

mkdir -p $binaries
mkdir -p $applications

# Download binary
curl -L "$src" >>"$binaries/$app"
chmod +x "$binaries/$app"

# Install icon
"$binaries/$app" --appimage-extract >/dev/null
install -Dm0755 "squashfs-root/usr/share/icons/hicolor/0x0/apps/$app.png" "$icons/hicolor/512x512/apps/$app.png"
rm -rf squashfs-root

# Install .desktop file
cat >"$applications/$app.desktop" <<EOL
[Desktop Entry]
Name=RemNote
Exec=$binaries/$app --enable-features=UseOzonePlatform --ozone-platform=wayland --no-sandbox %U
TryExec=$binaries/$app
Icon=$app.png
Terminal=false
Type=Application
MimeType=x-scheme-handler/remnote;x-scheme-handler/rn;
Categories=Education;
EOL

ls $binaries
ls $applications
ls $icons

echo "Finished installing RemNote"
