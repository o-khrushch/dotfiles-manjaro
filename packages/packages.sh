#!/bin/bash

set -Eeuox pipefail

# Install repo
yay -S --needed --noconfirm --repo telegram-desktop docker docker-compose go make neofetch vlc mkcert \
  xclip brave-browser redshift qbittorrent net-tools

# Enable aur
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
sudo sed -Ei '/CheckAURUpdates/s/^#//' /etc/pamac.conf

# Install aur
yay -S --needed --noconfirm --aur postman-bin anydesk-bin etcher-bin spotify \
  phpstorm goland rider

# Packages
for d in packages/*/ ; do
  cd "$d"
  sh "install.sh"
  cd -
done
