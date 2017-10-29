# install xcode requirements
xcode-select --install

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# general stuff
brew install git
brew install go
brew install htop
brew install jq
brew install tmux
brew install mosh
brew install wget
brew install gnupg
brew install awslogs
brew install vim --with-override-system-vi
brew install terraform
brew install packer
brew install vault
brew tap caskroom/cask
brew cask install google-chrome
brew cask install slack
brew cask install 1password
brew cask install virtualbox
brew cask install vagrant
brew cask install encryptme
brew cask install flux
brew cask install viscosity
brew cask install zoom

# Setup Code Env
mkdir -p ~/Code/go/src/github.com/hashicorp
git -C ~/Code clone git@github.com:mmcquillan/dotfiles.git
sh ~/Code/dotfiles/setup.sh

