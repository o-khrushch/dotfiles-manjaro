#!/bin/bash

set -Eeuox pipefail

yay -S --needed --noconfirm --repo nodejs npm nvm

sudo npm i -g yarn pnpm
