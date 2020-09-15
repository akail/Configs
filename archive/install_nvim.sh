#!/bin/bash

CWD=$PWD

mkdir -p $HOME/.config/nvim
rm -f $HOME/.config/nvim/init.vim
ln -s $CWD/init.vim $HOME/.config/nvim/init.vim
ln -s $CWD/snippets $HOME/.config/nvim/UltiSnips


# install vim-plug if not there
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#conda install -y pynvim
