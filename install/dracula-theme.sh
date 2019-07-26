#!/bin/bash

# terminal
git clone https://github.com/dracula/zsh.git ${ZSH_CUSTOM}/themes/dracula
ln -s $ZSH_CUSTOM/themes/dracula/dracula.zsh-theme $ZSH/themes/dracula.zsh-theme

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
