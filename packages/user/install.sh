#!/bin/bash

set -x

sudo cp -r backgrounds/* /usr/share/backgrounds
sudo cp -r avatars/* /usr/share/avatars

mkdir tmp

for f in themes/*.zip ; do
  unzip "$f" -d tmp
done
sudo mv -fn tmp/* /usr/share/themes

for f in icons/*.zip ; do
  unzip "$f" -d tmp
done
sudo mv -fn tmp/* /usr/share/icons

rm -rf tmp
