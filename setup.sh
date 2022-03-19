#!/bin/bash

set -x

sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm git base-devel yay

# Install
sh ./scripts/install.sh

# Packages
sh ./scripts/packages/elasticsearch.sh
sh ./scripts/packages/node.sh

# Folders
mkdir -p ~/dev
sudo cp -r ./root/* /
sudo cp -r ./home/. ~

# Finish
yay -Syyu --noconfirm
