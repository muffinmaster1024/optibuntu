#!/bin/bash
#This script basically is taken from https://support.mozilla.org/en-US/kb/install-firefox-linux
read -p "choose Language: [1] en OR [2] de" LANG
if [[ "LANG" == "1" ]]; then
    LANG="en-US"
elif [[ LANG == "2" ]]; then
    LANG="de"
else
    echo "Please choose 1 or 2"
fi 

#Download latest release
wget "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=$LANG" -O ~/Downloads/latest-firefox.tar.bz2

#Unpacking
tar -xjf ~/Downloads/lastest-firefox.tar.bz2

#Move to /opt
sudo mv firefox /opt

#linking to /bin
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox

#creating desktop file
sudo wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications

#Removing Download
rm ~/Downloads/latest-firefox.tar.bz2
