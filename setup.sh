#!/bin/bash

set -x

sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm git base-devel yay

# Install
sh ./scripts/install/repo.sh
sh ./scripts/install/aur.sh
sh ./scripts/install/snap.sh
sh ./scripts/install/source.sh

# Config
sh ./scripts/config/elasticsearch.sh
sh ./scripts/config/node.sh

# Folders
mkdir -p ~/dev
sudo cp -r ./root/* /
sudo cp -r ./home/* ~

# Finish
yay -Syyu --noconfirm
