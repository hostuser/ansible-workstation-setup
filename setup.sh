#!/usr/bin/env bash

sudo apt install -y wget unzip

mkdir -p /tmp/setup
cd /tmp/setup
wget https://github.com/makkus/ansible-workstation-setup/archive/master.zip
unzip master.zip
rm master.zip
cd /tmp/setup/ansible-workstation-setup-master
./bootstrap.sh


