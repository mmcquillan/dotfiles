#!/bin/bash

# settings
echo 'Setting ~/.vimrc'
cp ./vimrc ~/.vimrc
echo 'Setting ~/.profile'
cp ./profile ~/.profile
echo 'Setting ~/.tmux.conf'
cp ./tmux.conf ~/.tmux.conf
if [ ! -f ~/.vim/autoload/plug.vim ]; then
	echo 'Installing plug.vim'
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# additional feedback
echo 'run vim and :PlugInstall'
echo 'run vim and :GoInstallBinaries'
echo 'save local to ~/.profile.local'
