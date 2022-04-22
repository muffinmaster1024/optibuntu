#!/bin/bash

sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install flatpak gnome-software-plugin-flatpak gnome-software -y

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "You should reboot now for the setup to be completed"
