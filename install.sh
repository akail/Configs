#!/bin/bash

CWD=$PWD

# install packages
sudo pacman -S $(cat $CWD/installed.txt)

# install aur packages
trizen -S $(cat $CWD/installed_aur.txt)

# install configuration items

rm -f $HOME/.mybashrc
ln -s $CWD/bashrc $HOME/.mybashrc
echo "source $HOME/.mybashrc" >> $HOME/.bashrc

rm -f $HOME/.condarc
ln -s $CWD/condarc $HOME/.condarc

rm -f $HOME/.tmux.conf
ln -s $CWD/tmux.conf $HOME/.tmux.conf

rm -f $HOME/.gitconfig
ln -s $CWD/gitconfig $HOME/.gitconfig

rm -rf $HOME/.tmuxp
ln -s $CWD/tmuxp $HOME/.tmuxp

mkdir -p $HOME/.config/nvim
rm -f $HOME/.config/nvim/init.vim
ln -s $CWD/init.vim $HOME/.config/nvim/init.vim


# TODO: If miniconda3 directory exists, don't do this
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh > $HOME/Downloads/miniconda3.sh
bash $HOME/Downloads/miniconda3.sh


# install vim-plug if not there
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
