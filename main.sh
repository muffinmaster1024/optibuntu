#!/bin/bash

./no-snap.sh

#PPAs from ppa.lst
for ppa in $(cat ppa.lst)
do
    sudo add-apt-repository ppa:$ppa
done

./setup-signal.sh -m
./setup-brave-browser.sh -m

sudo apt update
#sudo apt upgrade -y

#APT from apt.lst
for apt in $(cat apt.lst)
do
    sudo install -y $apt
done

#./sub.sh

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#FLATPAKs from flatpak .lst
for flat in $(cat flat.lst)
do
    flatpk install $flat
done

./firefox-from-source.sh
