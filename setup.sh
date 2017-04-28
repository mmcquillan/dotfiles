#!/bin/bash
echo 'Setting ~/.vimrc'
cp ./vimrc ~/.vimrc
echo 'Setting ~/.profile'
cp ./profile ~/.profile
if [ ! -f ~/.vim/autoload/plug.vim ]; then
	echo 'Installing plug.vim'
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
echo 'run vim and :PlugInstall'
echo 'run vim and :GoInstallBinaries'
