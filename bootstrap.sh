#!/usr/bin/env bash
sudo pacman -S ansible
ansible-galaxy install andrewrothstein.miniconda
ansible-galaxy install andrewrothstein.conda-env
ansible-galaxy install kewlfft.aur
ansible-galaxy install cmprescott.autofs

