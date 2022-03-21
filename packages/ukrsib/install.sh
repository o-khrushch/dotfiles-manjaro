#!/bin/bash

set -x

unzip euswi.64.zip
sudo mv -fn euswi.64/* /
rm -rf euswi.64
