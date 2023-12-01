#!/bin/bash
wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"
sudo cp -rp firefox*.tar.bz2 /opt
sudo rm -rf firefox*.tar.bz2
sudo tar xjf /opt/firefox*.tar.bz2
sudo rm -rf /opt/firefox*.tar.bz2
sudo chown -R $USER /opt/firefox
sudo cp -rp firefox_dev.desktop ~/.local/share/applications/

#if line 6 doesnt work  tar -x -f firefox.tar.bz2
#chmod +x doit.sh
