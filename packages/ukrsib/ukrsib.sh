#!/bin/bash

set -x

cd packages/ukrsib

unzip euswi.64.zip
sudo mv -fn euswi.64/* /
rm -rf euswi.64
