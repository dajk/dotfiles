# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# install autosuggestions
ZSH_CUSTOM_PATH=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

if [ ! -d ${ZSH_CUSTOM_PATH}/plugins/zsh-autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM_PATH}/plugins/zsh-autosuggestions
fi

plugins=(
  git
  zsh-autosuggestions
  npm
  macos
)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

# dracula theme
if [ ! -d ${ZSH_CUSTOM}/themes/dracula ]; then
  git clone https://github.com/dracula/zsh.git ${ZSH_CUSTOM}/themes/dracula
  ln -s $ZSH_CUSTOM/themes/dracula/dracula.zsh-theme $ZSH/themes/dracula.zsh-theme
  ZSH_THEME="dracula"
fi

# Set Homebrew PATH
source $HOME/.zprofile

# Setting zsh aliases
source $HOME/.aliases

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

# NVM
export NVM_DIR="$HOME/.nvm"
if [ ! -d "$NVM_DIR" ]; then
  mkdir "$NVM_DIR"
fi
source $(brew --prefix nvm)/nvm.sh

if [ -f "$NVM_DIR/nvm.sh" ]; then
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
else
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi

NVM_VERSION=$(nvm version)

if [[ $NVM_VERSION =~ system ]]; then
  nvm install --lts
else
  echo "Running node $NVM_VERSION"
fi

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

