#!/usr/bin/env bash

uname_info=`uname -a`

case "$uname_info" in

    *MANJARO*)
        echo "Bootstrapping for Manjaro"
	sudo pacman -S ansible

        ;;
    *Debian*)
        echo "Bootstrapping for Debian"
        sudo apt install pipx python3-venv
        #pipx install ansible
        ;;
    *el8*)
        echo "Bootstrapping for EL7"
	sudo yum install ansible
        ;;
    *el7*)
        echo "Bootstrapping for EL7"
	sudo yum install ansible
        ;;
esac

# Install all ansible galaxy entries
ansible-galaxy install andrewrothstein.miniconda
ansible-galaxy install andrewrothstein.conda-env
ansible-galaxy install kewlfft.aur
ansible-galaxy install cmprescott.autofs
ansible-galaxy collection install community.general

