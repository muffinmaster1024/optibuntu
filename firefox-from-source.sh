#!/bin/bash
#This script basically is taken from https://support.mozilla.org/en-US/kb/install-firefox-linux

#Download latest release
wget "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US" -O ~/Downloads/latest-firefox.tar.bz2

#Unpacking
tar xjf ~/Downloads/lastest-firefox.tar.bz2

#Move to /opt
sudo mv firefox /opt

#linking to /bin
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox

#creating desktop file
sudo wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications

#Removing Download
rm ~/Downloads/latest-firefox.tar.bz2
