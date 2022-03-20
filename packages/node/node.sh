#!/bin/bash

set -x

yay -S --noconfirm --repo nodejs npm nvm

sudo npm i -g yarn pnpm
