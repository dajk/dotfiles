#!/bin/bash

cp ./.gitignore ~/.gitignore_global
cp ./.gitconfig ~/.gitconfig
git config --global core.excludesfile "${HOME}/.gitignore_global"

printf "Type the name you would like to display in your git commits: "
read name
if [ -z "$name" ]; then
  echo "name not supplied"
else
  git config --global user.name "$name"
fi

printf "Type your git email: "
read email
if [ -z "$email" ]; then
  echo "email not supplied"
else
  git config --global user.email "$email"
fi
