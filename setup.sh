#!/usr/bin/env bash

sudo apt install -y wget unzip

mkdir -p ~/src/system
cd ~/src/system
wget https://github.com/makkus/ansible-workstation-setup/archive/master.zip
unzip master.zip
rm master.zip
cd ~/src/system/ansible-workstation-setup-master
./bootstrap.sh


