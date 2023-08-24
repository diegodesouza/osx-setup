#!/bin/bash

source ~/osx-setup/setup/functions.sh

fancy_echo "Installing CLI tools ..."

fancy_echo "Installing/Config git ..."
# Install and setup git
brew install git
git config --global user.name "Diego de Souza"
git config --global user.email "diegotrus7@gmail.com"
git config --global color.ui true
git config --global push.default simple

brew_install zsh
brew_install python3
brew_install nvm 
# source "$(brew --prefix nvm)/nvm.sh"
# source ~/.nvm/nvm.sh

fancy_echo "Installing Node ..."
nvm install node
fancy_echo "Setting latest version of Node to default ..."
nvm alias default node

fancy_echo "Tapping Brew Cask ..."
brew tap homebrew/cask

brew_cask_install ack
brew_cask_install alfred 
brew_cask_install caffeine 
brew_cask_install firefox
brew_cask_install flux
brew_cask_install google-chrome
brew_cask_install iterm2
brew_cask_install karabiner-elements 
brew_cask_install onyx
brew_cask_install quicksilver
brew_cask_install shiftif 
brew_cask_install simplenote 
brew_cask_install slack 
brew_cask_install webstorm 