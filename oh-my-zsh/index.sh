#!/bin/bash
source ../utils/utils.sh

ZSH=~/.oh-my-zsh

if [ -d "$ZSH" ]; then
  e_warning "Oh My Zsh is already installed. skipping.."
else
  curl -L http://install.ohmyz.sh | sh
fi

#To install ZSH themes & aliases
cp ./.aliases ~/.aliases
cp ./.zshrc ~/.zshrc
