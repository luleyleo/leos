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
        ca.desrt.dconf-editor \
        com.authormore.penpotdesktop \
        com.github.jeromerobert.pdfarranger \
        com.github.tchx84.Flatseal \
        com.nextcloud.desktopclient.nextcloud \
        com.spotify.Client \
        com.teamspeak.TeamSpeak \
        com.valvesoftware.Steam \
        de.haeckerfelix.Fragments \
        de.leopoldluley.Clapgrep \
        dev.edfloreshz.CosmicTweaks \
        io.ente.auth \
        io.github.alainm23.planify \
        io.github.celluloid_player.Celluloid \
        io.github.flattool.Ignition \
        io.github.flattool.Warehouse \
        io.gitlab.adhami3310.Converter \
        io.gitlab.news_flash.NewsFlash \
        io.gitlab.theevilskeleton.Upscaler \
        it.mijorus.gearlever \
        md.obsidian.Obsidian \
        net.nokyan.Resources \
        org.chromium.Chromium \
        org.fedoraproject.MediaWriter \
        org.gimp.GIMP \
        org.gnome.Calendar \
        org.gnome.Contacts \
        org.gnome.FileRoller \
        org.gnome.Fractal \
        org.gnome.Gtranslator \
        org.gnome.Loupe \
        org.gnome.Papers \
        org.gnome.TextEditor \
        org.gnome.baobab \
        org.gnome.design.IconLibrary \
        org.mozilla.Thunderbird \
        org.mozilla.firefox \
        org.nickvision.tubeconverter \
        org.onlyoffice.desktopeditors \
        org.openrgb.OpenRGB \
        org.signal.Signal \
        org.sqlitebrowser.sqlitebrowser \
        org.tabos.saldo \
        org.zotero.Zotero \
        page.codeberg.Imaginer.Imaginer \
        us.zoom.Zoom
