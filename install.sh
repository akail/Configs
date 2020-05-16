#!/bin/bash

CWD=$PWD

sudo pacman-mirrors --geoip
sudo pacman -Syu

# install packages
sudo pacman -S $(cat $CWD/installed.txt)

# install aur packages
trizen -S $(cat $CWD/installed_aur.txt)

# install configuration items

echo "source $HOME/code/Configs/bashrc" >> $HOME/.bashrc

#rm -f $HOME/.myzshrc
#ln -s $CWD/zshrc $HOME/.myzshrc
#echo "source $HOME/.myzshrc" >> $HOME/.zshrc
echo "source $HOME/code/Configs/zshrc" >> $HOME/.zshrc


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

# copy scripts folder
rm -rf $HOME/Apps
ln -s $CWD/scripts $HOME/Apps

# TODO: If miniconda3 directory exists, don't do this
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh > $HOME/Downloads/miniconda3.sh
bash $HOME/Downloads/miniconda3.sh


# install vim-plug if not there
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -rf $HOME/.oh-my-zsh/lib/conda.zsh
ln -s $CWD/conda.zsh $HOME/.oh-my-zsh/lib/conda.zsh

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# add spotify gpg signatures
curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import -
