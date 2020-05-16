#!/bin/bash
#

[[ $- != *i* ]] && return

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

alias bashrc='nvim $HOME/code/Configs/bashrc'

source $HOME/code/Configs/shellrc
