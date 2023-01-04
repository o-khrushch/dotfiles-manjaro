#!/bin/bash

set -Eeuox pipefail

sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm git base-devel yay

mkdir -p ~/dev

# Install Packages
sh ./packages/packages.sh

# Finish
yay -Syyu --noconfirm
