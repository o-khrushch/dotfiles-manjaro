#!/bin/bash

set -Eeuox pipefail

yay -S --needed --noconfirm --repo zsh

# Plugins
if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
fi

cp .p10k.zsh ~

# p10k configure
#alias l="ls -lHa"
#alias o="xdg-open ."
#alias c="xclip"
#alias v="xclip -o"
#alias day="redshift -x"
#alias night="redshift -O 3700"
