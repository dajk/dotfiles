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

  # code --install-extension jasonnutter.search-node-modules # memory problem
  code --install-extension aaron-bond.better-comments
  code --install-extension adpyke.codesnap
  code --install-extension arcanis.vscode-zipfs
  code --install-extension bierner.markdown-checkbox
  code --install-extension biarner.markdown-mermaid
  code --install-extension bradlc.vscode-tailwindcss
  code --install-extension bungcip.better-toml
  code --install-extension cssho.vscode-svgviewer
  code --install-extension dbaeumer.vscode-eslint
  code --install-extension donjayamanne.githistory
  code --install-extension dracula-theme.theme-dracula
  code --install-extension eamodio.gitlens
  code --install-extension EditorConfig.EditorConfig
  code --install-extension esbenp.prettier-vscode
  code --install-extension formulahendry.auto-rename-tag
  code --install-extension github.copilot-chat
  code --install-extension github.copilot-labs
  code --install-extension github.copilot
  code --install-extension GitLab.gitlab-workflow
  code --install-extension GraphQL.vscode-graphql
  code --install-extension GraphQL.vscode-graphql-execution
  code --install-extension GraphQL.vscode-graphql-syntax
  code --install-extension humao.rest-client
  code --install-extension iulian-radu-at.find-unused-exports
  code --install-extension jmfirth.vsc-space-block-jumper
  code --install-extension meganrogge.template-string-converter
  code --install-extension ms-azuretools.vscode-docker
  code --install-extension ms-playwright.playwright
  code --install-extension ms-vscode-remote.remote-containers
  code --install-extension pflannery.vscode-versionlens
  code --install-extension Prisma.prisma
  code --install-extension prisma.vscode-graphql
  code --install-extension quicktype.quicktype
  code --install-extension redhat.vscode-xml
  code --install-extension redhat.vscode-yaml
  code --install-extension rust-lang.rust-analyzer
  code --install-extension serayuzgur.crates
  code --install-extension streetsidesoftware.cspell-checker
  code --install-extension styled-components.vscode-styled-components
  code --install-extension techer.open-in-browser
  code --install-extension unifiedjs.vscode-mdx
  code --install-extension usernamehw.errorlens
  code --install-extension WallabyJs.console-ninja
  code --install-extension yoavbls.pretty-ts-errors

  e_success "Extensions for vscode have been installed."
else
  e_warning "Skip vscode extension installation..."
  exit 1
fi
