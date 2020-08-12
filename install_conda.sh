#!/bin/bash

CWD=$PWD

rm -f $HOME/.condarc
ln -s $CWD/condarc $HOME/.condarc

# TODO: If miniconda3 directory exists, don't do this
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh > $HOME/miniconda3.sh
bash $HOME/miniconda3.sh

# install anaconda requirements
export PATH=$PATH:/home/akail/miniconda3/bin
. $HOME/miniconda3/etc/profile.d/conda.sh
conda install jupyter jupyterlab

jupyter labextension install jupyterlab_vim
jupyter labextension install @jupyterlab/toc

# make sure nvim is installed in anaconda base.  neovim doesn't always catch the correct
# python interpreter when in a pshell
conda install -y pynvim
