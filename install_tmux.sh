#!/bin/bash

CWD=$PWD

rm -f $HOME/.tmux.conf
ln -s $CWD/tmux.conf $HOME/.tmux.conf

rm -rf $HOME/.tmuxp
ln -s $CWD/tmuxp $HOME/.tmuxp

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
