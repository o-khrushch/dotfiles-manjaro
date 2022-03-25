#!/bin/bash

set -x

sudo cp -r backgrounds/* /usr/share/backgrounds
sudo cp -r avatars/* /usr/share/avatars

for filePath in {icons,themes}/*.zip ; do
  file="${filePath%%.*}"
  if [ ! -d "/usr/share/${file}" ]; then
    sudo unzip -j "$filePath" -d "/usr/share/$file"
  fi
done
