#!/bin/bash

echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null

if ! [[ "$1" == "-m" ]]; then
    sudo apt update && \
    if [[ `cat /etc/os-release|grep VERSION_ID|cut -d'"' -f2|cut -d'.' -f1` -lt "22" ]]; then
        sudo apt install nala-legacy -y
    else
        sudo apt install nala -y
    fi
fi
