fletpak-init: flatpak-remove-defaults flatpak-setup-remotes flatpak-install-defaults

# Removes the default flatpak apps, runtimes and remotes shipped with Fedora
flatpak-remove-defaults:
  /usr/bin/remove-fedora-flatpaks

# Configures Flathub and Flathub Beta remotes
flatpak-setup-remotes:
  flatpak remote-add --user --if-not-exists flathub --title=Flathub https://dl.flathub.org/repo/flathub.flatpakrepo
  flatpak remote-add --user --if-not-exists flathub-beta --title="Flathub Beta" https://dl.flathub.org/beta-repo/flathub-beta.flatpakrepo

# Installs my default set of Flatpaks
flatpak-install-defaults:
  flatpak install --user --noninteractive flathub \
    com.github.jeromerobert.pdfarranger \
    com.github.tchx84.Flatseal \
    com.nextcloud.desktopclient.nextcloud \
    com.spotify.Client \
    com.spotify.Client \
    com.teamspeak.TeamSpeak \
    io.github.flattool.Warehouse \
    io.gitlab.news_flash.NewsFlash \
    it.mijorus.gearlever \
    md.obsidian.Obsidian \
    net.nokyan.Resources \
    org.chromium.Chromium \
    org.fedoraproject.MediaWriter \
    org.gnome.Calendar \
    org.gnome.Contacts \
    org.gnome.Fractal \
    org.gnome.Loupe \
    org.gnome.Papers \
    org.gnome.TextEditor \
    org.gnome.baobab \
    org.mozilla.Thunderbird \
    org.mozilla.firefox \
    org.onlyoffice.desktopeditors \
    org.openrgb.OpenRGB \
    org.signal.Signal \
    de.leopoldluley.Clapgrep
  flatpak install --user --noninteractive flathub-beta \
    org.zotero.Zotero
