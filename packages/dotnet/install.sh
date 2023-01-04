#!/bin/bash

set -Eeuox pipefail

yay -S --needed --noconfirm --repo dotnet-runtime aspnet-targeting-pack aspnet-runtime dotnet-sdk
