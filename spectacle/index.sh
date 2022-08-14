#!/bin/bash

source ../utils/utils.sh

SPECTACLE_PATH=~/Library/Application\ Support/Spectacle/

if [ ! -d "$SPECTACLE_PATH" ]; then
  mkdir "$SPECTACLE_PATH"
fi

cp ./Shortcuts.json "$SPECTACLE_PATH"

e_success "Spectacle settings copied"

