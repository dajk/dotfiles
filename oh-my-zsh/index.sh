#!/bin/bash

source ../utils/utils.sh

ZSH=~/.oh-my-zsh

# install zsh, registers zsh as a default shell
brew install zsh
ZSH_PATH=$(which zsh)
grep -Fxq "$ZSH_PATH" /etc/shells || sudo bash -c "echo $ZSH_PATH >> /etc/shells"

# make zsh default shell
chsh -s "$ZSH_PATH" $USER

if [ -d "$ZSH" ]; then
  e_warning "Oh My Zsh is already installed. skipping.."
else
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# To install ZSH themes & aliases
cp ./.aliases ~/.aliases
cp ./.zshrc ~/.zshrc
