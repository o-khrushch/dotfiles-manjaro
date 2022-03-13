#!/bin/bash

# Enable
yay -S --noconfirm snapd libpamac-snap-plugin
sudo systemctl enable --now snapd.socket
sudo ln -sf /var/lib/snapd/snap /snap
sudo sed -Ei '/EnableSnap/s/^#//' /etc/pamac.conf

# Install
sudo snap install --classic slack
sudo snap install --classic spotify
sudo snap install --classic phpstorm
sudo snap install --classic webstorm
sudo snap install --classic goland
