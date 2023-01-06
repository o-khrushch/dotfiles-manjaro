#!/bin/bash

set -Eeuox pipefail

yay -S --needed --noconfirm --repo jdk17-openjdk

sudo archlinux-java set java-17-openjdk
