#!/bin/bash

append_to_zshrc() {
  local text="$1" zshrc
  local skip_new_line="${2:-0}"

  if [ -w "$HOME/.zshrc.local" ]; then
    zshrc="$HOME/.zshrc.local"
  else
    zshrc="$HOME/.zshrc"
  fi

  if ! grep -Fqs "$text" "$zshrc"; then
    if [ "$skip_new_line" -eq 1 ]; then
      printf "%s\n" "$text" >> "$zshrc"
    else
      printf "\n%s\n" "$text" >> "$zshrc"
    fi
  fi
}

fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\n$fmt\n" "$@"
}

command_exists () {
    type "$1" &> /dev/null ;
}

brew_install () {
    echo "\nChecking if $1 is installed ..."
    if brew list $1 &>/dev/null; then
        echo "${1} is already installed"
    else
        brew install $1 && echo "$1 is installed"
    fi
}

brew_cask_install () {
    echo "\nChecking if $1 is installed ..."
    if ! -d "/Applications/$1" &>/dev/null; then
        echo "${1} is already installed"
    else
        brew install --cask $1 && echo "$1 is installed"
    fi
}
