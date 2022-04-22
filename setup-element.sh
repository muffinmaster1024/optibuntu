#!/bin/bash
#from https://element.io/get-started#linux-details

if ! [[ "$1" == "-m" ]]; then
    sudo apt install -y wget apt-transport-https
fi

sudo wget -O /usr/share/keyrings/element-io-archive-keyring.gpg https://packages.element.io/debian/element-io-archive-keyring.gpg
‍
echo "deb [signed-by=/usr/share/keyrings/element-io-archive-keyring.gpg] https://packages.element.io/debian/ default main" | sudo tee /etc/apt/sources.list.d/element-io.list

if ! [[ "$1" == "-m" ]]; then
    sudo apt update && sudo apt install element-desktop -y
fi
