#!/bin/bash

source ../utils/utils.sh

ZSH=~/.oh-my-zsh

# install zsh, registers zsh as a default shell
brew install zsh
ZSH_PATH=$(which zsh)
grep -Fxq "$ZSH_PATH" /etc/shells || sudo bash -c "echo $ZSH_PATH >> /etc/shells"

if [ -d "$ZSH" ]; then
  e_warning "Oh My Zsh is already installed. skipping.."
else
  curl -L http://install.ohmyz.sh | sh
fi

mkdir ~/Workspace

# To install ZSH themes & aliases
cp ./.aliases ~/.aliases
cp ./.zshrc ~/.zshrc
