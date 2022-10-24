#!/bin/bash

source ../utils/utils.sh

VSCODE_USER_PATH=~/Library/Application\ Support/Code/User/

if [ ! -d "$VSCODE_USER_PATH" ]; then
  echo "$VSCODE_USER_PATH"
fi

cp ./settings.json  "$VSCODE_USER_PATH"
cp ./keybindings.json  "$VSCODE_USER_PATH"
cp -r ./snippets  "$VSCODE_USER_PATH"
e_success "VSCODE settings copied"

read -p "Do you want to install recommended vscode extensions? [Y|n] " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
  e_header "Installing vscode extensions, please wait..."

  code --install-extension github.copilot
  code --install-extension dracula-theme.theme-dracula
  code --install-extension editorconfig.editorconfig
  code --install-extension ms-azuretools.vscode-docker
  code --install-extension dbaeumer.vscode-eslint
  code --install-extension eamodio.gitlens
  code --install-extension prisma.vscode-graphql
  code --install-extension techer.open-in-browser
  code --install-extension esbenp.prettier-vscode
  code --install-extension humao.rest-client
  # code --install-extension jasonnutter.search-node-modules # memory problem
  code --install-extension bungcip.better-toml
  code --install-extension cssho.vscode-svgviewer
  code --install-extension styled-components.vscode-styled-components
  code --install-extension redhat.vscode-yaml
  code --install-extension eg2.vscode-npm-script
  code --install-extension bradlc.vscode-tailwindcss
  code --install-extension jmfirth.vsc-space-block-jumper
  code --install-extension aaron-bond.better-comments
  code --install-extension streetsidesoftware.cspell-checker
  code --install-extension biarner.markdown-mermaid
  code --install-extension quicktype.quicktype
  code --install-extension pflannery.vscode-versionlens
  code --install-extension arcanis.vscode-zipfs

  e_success "Extensions for vscode have been installed."
else
  e_warning "Skip vscode extension installation..."
  exit 1
fi

