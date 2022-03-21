#!/bin/bash

set -x

sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm git base-devel yay

# Install
sh ./packages/install.sh

mkdir -p ~/dev

# Finish
yay -Syyu --noconfirm
