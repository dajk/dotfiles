#!/bin/bash

source ../utils/utils.sh

SPECTACLE_PATH=~/Library/Application\ Support

mkdir "$SPECTACLE_PATH"/Spectacle
cp ./Shortcuts.json "$SPECTACLE_PATH"/Spectacle/

e_success "Spectacle settings copied"
