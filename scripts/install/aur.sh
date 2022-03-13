#!/bin/bash

# Enable
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
sudo sed -Ei '/CheckAURUpdates/s/^#//' /etc/pamac.conf

# Install
yay -S --noconfirm --aur openfortigui
