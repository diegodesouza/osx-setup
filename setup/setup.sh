#!/bin/bash

echo "Initiating Setup";

source ~/osx-setup/setup/functions.sh

if ! command -v brew >/dev/null; then
 fancy_echo "Installing Homebrew ..."
   curl -fsS \
     'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby

   append_to_zshrc '# recommended by brew doctor'

   # shellcheck disable=SC2016
   append_to_zshrc 'export PATH="/usr/local/bin:$PATH"' 1

   export PATH="/usr/local/bin:$PATH"
else 
   fancy_echo "$(brew --version)"
   fancy_echo "Updating Homebrew ..."
   brew update
   fancy_echo "Upgrading Homebrew ..."
   brew upgrade
   fancy_echo "Finished updating Homebrew 🍺\n"
fi

source ~/osx-setup/setup/applications.sh

fancy_echo "Done"