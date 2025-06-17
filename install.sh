#!/bin/sh

source utils/utils.sh

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

# Homebrew
if test ! $(which brew); then
  e_header "Installing Homebrew"
  
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  e_header "Updating Homebrew"
  brew update
fi

source ~/.zprofile

if test ! $(which brew); then
  echo "Unfortunately Homebrew is not set"
  exit 1
else
  e_success "Homebrew ready!"
fi

# checks if apple ID was used as argument, if not ask for it
if [ $# -eq 0 ]; then
  e_ask "Enter your  ID: "
  read APPLEID
else
  APPLEID=$1
fi

brew install mas

mas signout
e_header "Signing in with your  ID"
mas signin --dialog $APPLEID
mas upgrade
e_success "apple store apps upgrade done!"

e_header "Next time you are asked for you password, enter you system password"

# run Brewfile
e_header "Run Brewfile!"
brew tap Homebrew/bundle
brew bundle
e_success "brew and cask done!"

e_header "Setting git"
(cd git; source index.sh)
e_success "git setup done!"

e_header "Setting Oh my zsh"
(cd oh-my-zsh; source index.sh)
e_success "Oh my zsh installed!"

e_header "Setting vim"
(cd vim; source index.sh)
e_success "vim installed!"

e_header "Setting up nodejs"
nvm install --lts
e_success "nodejs setup done!"

e_header "Setting up MacOSX"
(cd osx; source index.sh)
e_success "MacOSX setup done!"

e_header "Setting vscode"
(cd vscode; source index.sh)
e_success "vscode setup done!"

# Sotftware update
e_success "Launching software update..."
softwareupdate -ia

read -p "Do you want to reboot your mac? [y|N] " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
  exit 1
else
  sudo reboot
fi
