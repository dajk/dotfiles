#!/bin/bash

# Install all the shell scripts
./install/zsh.sh
./install/spaceship-prompt.sh
./install/dracula-theme.sh

# Copy dotfiles
cp dots/.aliases ~/.aliases
cp dots/.vimrc ~/.vimrc
cp dots/.zshrc ~/.zshrc
