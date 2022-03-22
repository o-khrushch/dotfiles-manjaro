#!/bin/bash

set -x

# Install repo
yay -S --noconfirm --repo telegram-desktop php composer docker docker-compose go make neofetch \
  discord xclip dotnet-runtime brave-browser redshift signal-desktop

# Enable aur
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
sudo sed -Ei '/CheckAURUpdates/s/^#//' /etc/pamac.conf

# Install aur
yay -S --noconfirm --aur openfortigui postman-bin

# Enable snap
yay -S --noconfirm snapd libpamac-snap-plugin
sudo systemctl enable --now snapd.socket
sudo ln -sf /var/lib/snapd/snap /snap
sudo sed -Ei '/EnableSnap/s/^#//' /etc/pamac.conf

# Install snap
sudo snap install --classic slack
sudo snap install --classic spotify
sudo snap install --classic phpstorm
sudo snap install --classic webstorm
sudo snap install --classic goland
sudo snap install --classic rider
sudo snap install --classic intellij-idea-ultimate

# Packages
for d in packages/*/ ; do
  cd "$d"
  sh "install.sh"
  cd -
done
