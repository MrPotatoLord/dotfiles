sudo cp -rp firefox_dev.desktop ~/.local/share/applications/
wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"
sudo cp -rp firefox*.tar.bz2 /opt
sudo rm -rf firefox*.tar.bz2
cd /opt
sudo tar xjf firefox*.tar.bz2
sudo rm -rf firefox*.tar.bz2
sudo chown -R $USER /opt/firefox

#if line 6 doesnt work  tar -x -f firefox.tar.bz2
