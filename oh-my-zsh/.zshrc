# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export LSCOLORS='exfxcxdxbxegedabagacad'
export CLICOLOR=true

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# dracula theme
git clone https://github.com/dracula/zsh.git ${ZSH_CUSTOM}/themes/dracula
ln -s $ZSH_CUSTOM/themes/dracula/dracula.zsh-theme $ZSH/themes/dracula.zsh-theme
ZSH_THEME="dracula"

plugins=(git npm osx)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

# Setting zsh aliases
source $HOME/.aliases

nvm use default
clear
