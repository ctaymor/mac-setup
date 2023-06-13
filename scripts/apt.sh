#!/usr/bin/env bash
#
set -eux

# Setup Prebuilt MPR for `just` package
# https://docs.makedeb.org/prebuilt-mpr/getting-started/#setting-up-the-repository
wget -qO - 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebu
ilt-mpr-archive-keyring.gpg 1> /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-
mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list
sudo apt update

FILE=~/workspace/mac-setup/apt-list
sudo apt-get install $(cat $FILE)
