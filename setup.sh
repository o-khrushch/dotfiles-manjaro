#!/bin/bash

set -x

sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm git base-devel yay

mkdir -p ~/dev

# Install
sh ./packages/packages.sh

# Finish
yay -Syyu --noconfirm
