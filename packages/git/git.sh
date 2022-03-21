#!/bin/bash

set -x

cd packages/git

yay -S --noconfirm --repo git

cp .gitconfig ~
