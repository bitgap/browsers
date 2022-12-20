#!/bin/sh

sudo apt update


wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
 
sudo apt install ./google-chrome-stable_current_amd64.deb -y
 
rm google-chrome-stable_current_amd64.deb

./google-chrome

echo "google-chrome & disown" | sudo tee /bin/chrome

sudo chmod +x /bin/chrome


sudo apt install -y curl jq openvpn


version="$(curl -s https://aus1.torproject.org/torbrowser/update_3/release/downloads.json | jq -r ".version")"

wget -O - "https://dist.torproject.org/torbrowser/"$version"/tor-browser-linux64-"$version"_ALL.tar.xz" | tar xvJ

./tor-browser/start-tor-browser.desktop

echo "$(pwd)/tor-browser/Browser/start-tor-browser & disown" | sudo tee /bin/tor

sudo chmod +x /bin/tor
