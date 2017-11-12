#!/bin/bash

# settings
echo 'INSTALLING...'
echo '- profile'
cp ./profile ~/.profile
echo '- vimrc'
cp ./vimrc ~/.vimrc
echo '- tmux.conf'
cp ./tmux.conf ~/.tmux.conf
if [ ! -f ~/.vim/autoload/plug.vim ]; then
	echo '- plug.vim'
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# additional feedback
echo 'NOTES...'
echo '- source ~/.profile'
echo '- ~/.profile.local'
echo '- vim:PlugInstall'
echo '- vim:GoInstallBinaries'
