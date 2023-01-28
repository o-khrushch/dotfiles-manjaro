#!/bin/bash

set -Eeuox pipefail

unzip euswi.64.zip
sudo cp -r euswi.64/* /
rm -rf euswi.64

sudo sh /opt/iit/eu/sw/install.sh
