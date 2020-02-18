#!/bin/bash

source ../utils/utils.sh

ZSH=~/.oh-my-zsh

# install zsh, registers zsh as a default shell
brew install zsh
ZSH_PATH=$(which zsh)
grep -Fxq "$ZSH_PATH" /etc/shells || sudo bash -c "echo $ZSH_PATH >> /etc/shells"

# make zsh default shell
# if [ $0 -eq "zsh" ]; then
#   e_note "You are already using $0"
# else
# chsh -s "$ZSH_PATH" $USER
# fi

if [ -d "$ZSH" ]; then
  e_warning "Oh My Zsh is already installed. skipping.."
else
  curl -L http://install.ohmyz.sh | sh
fi

# To install ZSH themes & aliases
cp ./.aliases ~/.aliases
cp ./.zshrc ~/.zshrc
