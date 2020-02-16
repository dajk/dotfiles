#!/bin/bash

source ../utils/utils.sh

cp -r ./.vscode ~/.vscode
cp ./settings.json  ~/Library/Application\ Support/Code/User/
cp ./keybindings.json  ~/Library/Application\ Support/Code/User/
cp -r ./snippets  ~/Library/Application\ Support/Code/User/
e_success "VSCODE settings copied"

e_header "Installing extensions please wait..."

code --install-extension dracula-theme.theme-dracula
code --install-extension editorconfig.editorconfig
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension ms-azuretools.vscode-docker
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension techer.open-in-browser
code --install-extension esbenp.prettier-vscode
code --install-extension humao.rest-client
code --install-extension jasonnutter.search-node-modules
code --install-extension cssho.vscode-svgviewer
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension redhat.vscode-yaml
code --install-extension eg2.vscode-npm-script

e_success "Extensions for VSC have been installed. Please restart your VSC."
