# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export LSCOLORS='exfxcxdxbxegedabagacad'
export CLICOLOR=true

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

ZSH_THEME="robbyrussell"
plugins=(git npm osx)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

# Setting zsh aliases
source $HOME/.aliases

nvm use default
clear
