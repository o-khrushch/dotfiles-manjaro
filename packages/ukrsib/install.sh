#!/bin/bash

set -Eeuox pipefail

unzip euswi.64.zip
sudo mv -fn euswi.64/* /
rm -rf euswi.64
