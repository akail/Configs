#!/bin/bash

CWD=$PWD

# install packages
sudo pacman -S $(cat $CWD/installed.txt)

# install aur packages
sudo trizen -S $(cat $CWD/installed_aur.txt)

# install configuration items

ln -s $CWD/bashrc $HOME/.bashrc
ln -s $CWD/condarc $HOME/.condarc
ln -s $CWD/tmux.conf $HOME/.tmux.conf
ln -s $CWD/gitconfig $HOME/.gitconfig
ln -s $CWD/tmuxp $HOME/tmuxp

mkdir -p $HOME/.config/nvim
ln -s $CWD/init.vim $HOME/.config/nvim/init.vim



