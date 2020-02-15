#!/bin/bash
source ../utils/utils.sh

cp -r ./.vscode ~/.vscode
cp ./settings.json  ~/Library/Application\ Support/Code/User/
cp ./keybindings.json  ~/Library/Application\ Support/Code/User/
e_success "VSCODE settings copied"

e_header "Installing extensions please wait..."

code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension eg2.tslint
code --install-extension eg2.vscode-npm-script
code --install-extension Equinusocio.vsc-material-theme
code --install-extension eriklynd.json-tools
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-rename-tag
code --install-extension leizongmin.node-module-intellisense
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension robertohuertasm.vscode-icons
code --install-extension steoates.autoimport

e_success "Extensions for VSC have been installed. Please restart your VSC."
