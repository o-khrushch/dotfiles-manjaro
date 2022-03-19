#!/bin/bash

# Install REPO
yay -S --noconfirm --repo telegram-desktop php composer docker docker-compose go make neofetch \
  nodejs npm discord xclip brave-browser redshift nvm zsh

# Enable AUR
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
sudo sed -Ei '/CheckAURUpdates/s/^#//' /etc/pamac.conf

# Install AUR
yay -S --noconfirm --aur openfortigui postman-bin

# Enable SNAP
yay -S --noconfirm snapd libpamac-snap-plugin
sudo systemctl enable --now snapd.socket
sudo ln -sf /var/lib/snapd/snap /snap
sudo sed -Ei '/EnableSnap/s/^#//' /etc/pamac.conf

# Install SNAP
sudo snap install --classic slack
sudo snap install --classic spotify
sudo snap install --classic phpstorm
sudo snap install --classic webstorm
sudo snap install --classic goland
sudo snap install --classic rider
sudo snap install --classic intellij-idea-ultimate

# Install AWS CLI
if ! command -v aws &> /dev/null; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "./awscliv2.zip"
    unzip ./awscliv2.zip
    rm ./awscliv2.zip
    sudo ./aws/install
    rm -rf ./aws
fi
