#!/bin/bash

./no-snap.sh

#PPAs from ppa.lst
for ppa in $(cat ppa.lst)
do
    sudo add-apt-repository ppa:$ppa -y
done

sudo apt install -y apt-transport-https curl wget

./setup-element.sh -m
./setup-signal.sh -m
./setup-brave-browser.sh -m
./setup-nala.sh -m

touch $HOME/.bash_aliases
echo "alias killpk='sudo kill -9 `ps aux|grep packagekitd|head -1|cut -d\  -f9`'" >> $HOME/.bash_aliases
echo "alias sysupdate='killpk && sudo nala update && sudo nala upgrade -y && sudo nala autoremove && flatpak update -y && flatpak remove --unused'" >> $HOME/.bash_aliases
source $HOME/.bash_aliases

sudo apt update
#sudo apt upgrade -y

#APT from apt.lst
for apt in $(cat apt.lst)
do
    sudo apt install $apt -y
done

for apt in $(cat apt-rmv.lst)
do
    sudo apt remove $apt -y
done
sudo apt autoremove

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#FLATPAKs from flatpak .lst
for flat in $(cat flatpak.lst)
do
    flatpak install $flat
done

./firefox-from-source.sh

./sub.sh
