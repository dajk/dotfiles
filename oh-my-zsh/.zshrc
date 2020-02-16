# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# dracula theme
git clone https://github.com/dracula/zsh.git ${ZSH_CUSTOM}/themes/dracula
ln -s $ZSH_CUSTOM/themes/dracula/dracula.zsh-theme $ZSH/themes/dracula.zsh-theme
ZSH_THEME="dracula"

plugins=(
  git
  zsh-autosuggestions
  npm
  osx
)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

# Setting zsh aliases
source $HOME/.aliases

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

nvm use default
clear
