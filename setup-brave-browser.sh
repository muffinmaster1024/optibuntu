#!/bin/bash
#These instructions come from https://brave.com/linux/#release-channel-installation

if ! [[ "$1" == "-m" ]]; then
    sudo apt install apt-transport-https curl -y
fi

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

if ! [[ "$1" == "-m" ]]; then
    sudo apt update && sudo apt install brave-browser -y
fi
