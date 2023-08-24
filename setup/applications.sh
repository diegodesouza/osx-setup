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

mkdir ~/.nvm

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh" #This loads nvm' >> ~/.zshrc
echo '[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion' >> ~/.zshrc

source ~/.nvm/nvm.sh

fancy_echo "Installing Node ..."
nvm install node
fancy_echo "Setting latest version of Node to default ..."
nvm alias default node

fancy_echo "Tapping Brew Cask ..."
brew tap homebrew/cask

brew_install ack
brew_install alfred
brew_install caffeine
brew_install firefox
brew_install flux
brew_install google-chrome
brew_install iterm2
brew_install karabiner-elements
brew_install onyx
brew_install quicksilver
brew_install rectangle
brew_install simplenote
brew_install slack
brew_install webstorm