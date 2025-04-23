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
        com.github.tchx84.Flatseal \
        de.haeckerfelix.Fragments \
        io.github.celluloid_player.Celluloid \
        io.github.flattool.Ignition \
        io.github.flattool.Warehouse \
        it.mijorus.gearlever \
        net.nokyan.Resources \
        org.gnome.Calendar \
        org.gnome.Contacts \
        org.gnome.FileRoller \
        org.gnome.Loupe \
        org.gnome.Papers \
        org.gnome.TextEditor \
        org.gnome.baobab \
        org.mozilla.Thunderbird \
        org.mozilla.firefox
