#!/bin/bash

echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null

OSLEVEL=`cat /etc/os-release|grep VERSION_ID|cut -d'"' -f2|cut -d'.' -f1`

if ! [[ "$1" == "-m" ]]; then
    sudo apt update && \
    if [[ $OSLEVEL -lt "22" ]]; then
        sudo apt install nala-legacy -y
    else
        sudo apt install nala -y
    fi
else
    if [[ $OSLEVEL -lt "22" ]]; then
        sed -i 's/$/ nala-legacy/' apt.lst
    else
        sed -i 's/$/ nala/' apt.lst
    fi    
fi
