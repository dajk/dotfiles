#!/bin/bash

git clone https://github.com/dracula/zsh.git ${ZSH_CUSTOM}/themes/dracula
ln -s $ZSH_CUSTOM/themes/dracula/dracula.zsh-theme $ZSH/themes/dracula.zsh-theme
