#!/usr/bin/env bash

set -oue pipefail

binaries=/usr/local/bin
applications=/usr/local/share/applications

app=remnote
src="https://backend.remnote.com/desktop/linux"

mkdir -p $binaries
mkdir -p $applications

# Download binary
curl -L "$src" >>"$binaries/$app"
chmod +x "$binaries/$app"

# Install icon
"$binaries/$app" --appimage-extract
install -Dm0755 squashfs-root/usr/share/icons/hicolor/0x0/apps/*.png /usr/local/share/icons/hicolor/512x512/apps/$app.png
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
