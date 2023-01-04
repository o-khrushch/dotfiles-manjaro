#!/bin/bash

set -Eeuox pipefail

yay -S --needed --noconfirm --repo java-17-openjdk

sudo archlinux-java set java-17-openjdk
