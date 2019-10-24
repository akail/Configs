#!/bin/bash
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

set -o vi
export EDITOR='nvim'
export GIT_EDITOR='nvim'

alias vi="nvim"
alias vim="nvim"
alias ls="ls --color"
alias l.="ls -d .*"
alias la="ls -a"
alias ll="ls -al"
alias grep="grep --color"
alias ..="cd .."
alias ...="cd ../.."
alias journalwatch='sudo journalctl -f'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias bashrc='nvim ~/.mybashrc'
alias docker='sudo docker'
alias pacman='sudo pacman'
alias wiki='cd $HOME/code; nvim -c "VimwikiIndex"; cd -'

# added by Anaconda3 4.3.1 installer
export PATH=/home/akail/miniconda3/bin:$PATH
. /home/akail/miniconda3/etc/profile.d/conda.sh

export PATH="/home/akail/Apps:/home/akail/Apps/bin:$PATH"

export MPW_FULLNAME=akail
export MPW_ASKPASS=/lib/cryptsetup/askpass 


#Functions
# This function will extract most common archives      
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.xz)    tar xJf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

startssh() {
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
