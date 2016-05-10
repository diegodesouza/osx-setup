#!/bin/bash

# DESCRIPTION
# Sets up and launches (if necessary) installed software.

# Install Xcode tools
xcode-select --install

# install and setup brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install and setup git
brew install git
git config --global user.name "Diego de Souza"
git config --global user.email "diegotrus7@gmail.com"
git config --global color.ui true
git config --global push.default simple

# Brew packages
#
brew install ack
brew install bash
brew install caskroom/cask/brew-cask
brew install chruby
brew install elixir
brew install heroku-toolbelt
brew install jshint
brew install macvim
brew install mongodb
brew install mysql
brew install node
brew install openssl
brew install postgresql
brew install phantomjs
brew install redis
brew install zsh

# Brew Cask 
#
brew cask install ccleaner
brew cask install calibre
brew cask install day-o
brew cask install dropbox
brew cask install firefox
brew cask install flux
brew cask install gitter
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install iterm2
brew cask install karabiner
brew cask install macdown
brew cask install onyx
brew cask install screenhero
brew cask install seil
brew cask install shiftit
brew cask install slack
brew cask install spotify
brew cask install spotifree
brew cask install robomongo 
brew cask install the-unarchiver
brew cask install toggldesktop
brew cask install utorrent
brew cask install vlc

# cleanup unneeded files from the cellar.
brew cleanup
brew cask cleanup
