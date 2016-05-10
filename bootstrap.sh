#!/usr/bin/env bash

# install pip
sudo apt install -y python-setuptools python-dev libffi-dev libssl-dev git
sudo easy_install pip
sudo pip2 install ansible

# ansible
#TODO check if dir/file exists
sudo mkdir /etc/ansible
echo -e "[local]\n127.0.0.1   ansible_connection=local\n" | sudo tee /etc/ansible/hosts

ansible-galaxy install -r requirements.yml

ansible-playbook --ask-become-pass play.yml
