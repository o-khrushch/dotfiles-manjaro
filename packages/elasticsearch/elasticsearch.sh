#!/bin/bash

set -x

cd packages/elasticsearch

if ! grep -q vm.max_map_count /etc/sysctl.d/99-sysctl.conf; then
  sudo sysctl -w vm.max_map_count=262144
  echo "vm.max_map_count=262144" | sudo tee -a /etc/sysctl.d/99-sysctl.conf
fi
