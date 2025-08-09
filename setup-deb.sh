#!/bin/bash

# install some basics
sudo apt install git
sudo apt install tmux
sudo apt install watch
sudo apt install htop
sudo apt install curl

# append existing bash file
cat ./bashrc-append >> ~/.bashrc

# copy in my bash config
cp ./bashrc.local ~/.bashrc.local

# vim config
cp ./vimrc ~/.vimrc
[ ! -f ~/.vim/autoload/plug.vim ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# helix config
mkdir -p ~/.config/helix
cp ./helix.toml ~/.config/helix/config.toml

# tmux config
cp ./tmux.conf ~/.tmux.conf

# load config
source ~/.bashrc

# vim plugin install
vi +PlugInstall +GoInstallBinaries
