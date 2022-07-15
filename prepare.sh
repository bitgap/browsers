#!/bin/sh

sudo apt update


wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
 
sudo apt install ./google-chrome-stable_current_amd64.deb -y
 
rm google-chrome-stable_current_amd64.deb

./google-chrome


sudo apt install -y curl jq openvpn

version="$(curl -s https://aus1.torproject.org/torbrowser/update_3/release/downloads.json | jq -r ".version")"

wget -O - "https://dist.torproject.org/torbrowser/"$version"/tor-browser-linux64-"$version"_en-US.tar.xz" | tar xvJ

./tor-browser_en-US/start-tor-browser.desktop
