#!/bin/bash
#

plugins=(git, poetry)

fpath+=~/.zfun

export VIRTUAL_ENV_DISABLE_PROMPT=1

# for tmuxp
export DISABLE_AUTO_TITLE=true

pshell() {
    poetry env info &> /dev/null
    if [ $? -eq 0 ]; then
        . `poetry env list --full-path | cut -d ' ' -f 1`/bin/activate
    else
        echo "No environment found"
    fi
}


alias zshrc='nvim $HOME/code/Configs/zshrc'

source $HOME/.all_shellrc
