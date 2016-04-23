#!/usr/bin/env bash

# install pip
sudo apt install python-setuptools python-dev
sudo easy_install pip
sudo pip2 install ansible

# ansible
sudo mkdir /etc/ansible
echo -e "[local]\n127.0.0.1   ansible_connection=local\n" | sudo tee /etc/ansible/hosts

ansible-playbook --ask-become-pass nix_install.yml
ansible-playbook --ask-become-pass python_install.yml
ansible-playbook user_setup.yml
ansible-playbook config_setup.yml
ansible-playbook --ask-become-pass misc_setup.yml

