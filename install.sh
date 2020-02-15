#!/bin/sh

source utils/utils.sh

# Homebrew
if test ! $(which brew); then
  e_header "Installing Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  e_header "Updating Homebrew"
  brew update
fi
e_success "Homebrew ready!"

# checks if apple ID was used as argument, if not ask for it
if [ $# -eq 0 ]
  then
    e_ask "Enter your  ID:"
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

e_header "Next time you are asked for you password, enter you system passowrd"

# run Brewfile
e_header "Run Brewfile!"
brew tap Homebrew/bundle
brew bundle
e_success "brew and cask done!"

e_header "Setting GIT"
(cd git ; source index.sh)
e_success "GIT setup done!"

e_header "Setting Oh my zsh"
(cd oh-my-zsh ; source index.sh)
e_success "Oh my zsh installed!"

e_header "Setting vim"
(cd vim ; source index.sh)
e_success "vim installed!"

e_header "Setting up nodejs"
nvm  install --lts
e_success "node setup done!"

e_header "Setting up mac os X"
(cd osx ; source index.sh)
e_success "OSX settings done!"

e_header "Setting VSCODE"
(cd vscode ; source index.sh)
e_success "VSCODE setup done!"

e_header "Setting Spectacle"
(cd spectacle ; source index.sh)
e_success "Spectacle setup done!"

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
