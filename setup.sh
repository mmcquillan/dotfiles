#!/bin/bash

# settings
echo 'Copying ~/.vimrc'
cp ./vimrc ~/.vimrc
echo 'Copying ~/.profile'
cp ./profile ~/.profile
echo 'Copying ~/.tmux.conf'
cp ./tmux.conf ~/.tmux.conf
if [ ! -f ~/.vim/autoload/plug.vim ]; then
	echo 'Installing plug.vim'
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# additional feedback
echo '...'
echo 'reload ~/.profile with source'
echo 'save local to ~/.profile.local'
echo 'run vim and :PlugInstall'
echo 'run vim and :GoInstallBinaries'
echo '...'
echo 'DONE'
