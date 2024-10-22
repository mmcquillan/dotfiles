#!/bin/bash

# brew setup
if [ ! -f /usr/local/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# brew eackages
brew install git
brew install gh
brew install go
brew install tmux
brew install figlet
brew install watch
brew install htop
brew install python
brew install zsh-git-prompt

# config files
cp ./zshrc ~/.zshrc
touch ~/.zshrc.local
cp ./vimrc ~/.vimrc
mkdir -p ~/.config/helix
cp ./helix.toml ~/.config/helix/config.toml
cp ./tmux.conf ~/.tmux.conf
if [ ! -f ~/.vim/autoload/plug.vim ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# load config
source ~/.zshrc

# vim plugin install
vim +PlugInstall +GoInstallBinaries
