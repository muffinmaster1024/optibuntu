#!/bin/bash

./no-snap.sh

#PPA
sudo add-apt-repository ppa:alexlarsson/flatpak
# sudo add-apt-repository ppa:PACKAGE

sudo apt update
sudo apt upgrade -y

#APT
sudo apt install dconf-editor gnome-tweaks #engrampa
sudo apt install flatpak gnome-software-plugin-flatpak gnome-software
#sudo apt remove file-roller

./firefox-from-source.sh
./setup-signal.sh
./setup-brave-browser.sh
#./sub.sh

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#FLAT
#flatpak install PACKAGE
