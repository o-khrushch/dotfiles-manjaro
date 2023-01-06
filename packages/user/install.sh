#!/bin/bash

set -Eeuox pipefail

sudo cp -a backgrounds/. /usr/share/backgrounds
sudo cp -a avatars/. /usr/share/avatars

# Themes
sudo unzip "themes/Sweet-Dark.zip" -d "/usr/share/themes"

# Icons
sudo unzip "icons/candy-icons.zip" -d "/usr/share/icons"

# Fonts
sudo unzip "fonts/jetbrains-mono.zip" -d "/usr/share/fonts/TTF"
