ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="gnzh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git vi-mode)
plugins=(git git-extras svn)

source $ZSH/oh-my-zsh.sh

export ParaView_DIR=/home/akail/OpenFOAM/ThirdParty-2.1.1/platforms/linux64Gcc/paraview-3.12.0
export PATH=$ParaView_DIR/bin:$PATH
export PV_PLUGIN_PATH=$FOAM_LIBBIN/paraview-3.12
                        
# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/akail/Linux/bin:/home/akail/Programs/Cubit:/home/akail/Programs/Matlab/bin:/home/akail/Libraries/MPICH2/mpich2-static/bin:/opt/Tecplot360/bin


export THESIS="/home/akail/Dropbox/Thesis"

# OpenFOAM pathing.  Will not read in bashrc sadly
#export PATH=$PATH:$FOAM_APPBIN:$WM_PROJECT_DIR/bin

#export PYTHONPATH=/home/akail/Programs/Cubit/bin:$PYTHONPATH
export PYTHONSTARTUP=~/.pythonrc

# Aliases
alias l='ls'
alias ..='cd ..'
alias vi='vim'
alias ll='ls -l'
alias la='ls -la'
alias l.='ls -d .* --color=auto'
alias rgrep='grep -r -n'
alias grep='grep --color=always'
alias rm='rm -i'
alias makec='make clean'
alias please='sudo'
alias fucking='sudo'
alias upgrade='apt-get update && apt-get upgrade && apt-get clean'
#alias urxvt='rxvt-unicode'
alias pacman='sudo pacman'
alias homewifi='sudo wifi-menu'

#alias tmux='tmux -2'



export TERM='xterm-256color'
    
# Adding functions here
deletesvn() {
    svn st | grep '^!' | awk '{print $2}' | xargs svn delete --force
}

pdfcombine () {
    if [ -f $1 ] ; then
        echo "Combining $1 and $2 into $3"
        pdftk $1 $2 cat output $3;
    else
        echo "'$1' is not a valid file"
    fi

}

# Make and CD to a new directory
function mcd() {
  mkdir -p "$1" && cd "$1";
  }

# This function will extract most common archives      
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
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

csvn () {
    rm -rf `find . -type d -name .svn`
}

mp4convert() {
# must install ubuntu-restricted-extras
    filename=$1
    filename2=$(echo $filename | cut -d'.' --complement -f2-)  
    mp3filename="$filename2.mp3"
    #echo $mp3filename
    #may have to switch to avconv
    ffmpeg -i $1 -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 $mp3filename
    #avconv -i $1 -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 $mp3filename
}

bleepcheck() {
## checks to see if any files in the directory have a cuss word
#words = {'fuck','shit', 'damn', 'motherfucker','bitch','goddamn','cunt'}

#for i in words; do
#echo $i
##grep -r $i $1
#done
grep -r -n "fuck" $1
grep -r -n "shit" $1
grep -r -n "damn" $1
grep -r -n "motherfucker" $1
grep -r -n "bitch" $1
grep -r -n "goddamn" $1
grep -r -n "cunt" $1

}

coretemp() {
#need lm_sensors installed 
#configure using sudo sensors-detect
 
/usr/bin/clear;

    while : ; do 

        /usr/bin/sensors | /bin/grep ^Core | while read x; do 

            /usr/bin/printf '% .23s\n' "$x"; 

        done; 

        /bin/sleep 1 && /usr/bin/clear;

    done;
}
mpd-start()
{
    mpd
    urxvt -e -xrm "Urxvt.perl-ext-common: default,matcher" ncmpcpp
}

latex2png(){
    latex $1
    filename=$1
    filename2=$(echo $filename | cut -d'.' --complement -f2-)  
    pngfilename="$filename2.png"
    dvifilename="$filename2.dvi"
    dvipng -T tight -z 9 -D 500 -bg 'transparent' $dvifilename -o $pngfilename
}

pingcheck()
{
    ping -c 3 www.google.com
}




