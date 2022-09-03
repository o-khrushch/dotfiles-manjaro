#!/bin/bash

set -Eeuox pipefail

yay -S --needed --noconfirm --repo dotnet-runtime aspnet-targeting-pack aspnet-runtime dotnet-sdk

# Trust SSL certificate
dotnet dev-certs https --clean
dotnet dev-certs https --trust
sudo -E dotnet dev-certs https -ep /usr/local/share/ca-certificates/aspnet/https.crt --format PEM
dotnet dev-certs https -ep ${HOME}/.aspnet/https/aspnetapp.pfx -p password --format PFX
certutil -d sql:$HOME/.pki/nssdb -A -t "P,," -n localhost -i /usr/local/share/ca-certificates/aspnet/https.crt
certutil -d sql:$HOME/.pki/nssdb -A -t "C,," -n localhost -i /usr/local/share/ca-certificates/aspnet/https.crt
