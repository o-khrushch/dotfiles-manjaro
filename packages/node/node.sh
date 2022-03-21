#!/bin/bash

set -x

cd packages/node

yay -S --noconfirm --repo nodejs npm nvm

sudo npm i -g yarn pnpm
