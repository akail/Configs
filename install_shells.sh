#!/bin/bash

CWD=$PWD

ln -s $CWD/shellrc $HOME/.all_shellrc

echo "source $CWD/bashrc" >> $HOME/.bashrc

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
	rm -rf $HOME/.oh-my-zsh/lib/conda.zsh && \
	ln -s $CWD/conda.zsh $HOME/.oh-my-zsh/lib/conda.zsh && \
	echo "source $CWD/zshrc" >> $HOME/.zshrc && \

