#!/bin/bash

set -Eeuox pipefail

yay -S --needed --noconfirm --repo git

cp .gitconfig ~
