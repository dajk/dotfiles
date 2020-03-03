#!/bin/bash

# Set the icon size of Dock items to 40 pixels
defaults write com.apple.dock tilesize -int 40

# Set Dark Mode
defaults write "Apple Global Domain" "AppleInterfaceStyle" "Dark"

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Removed genie animation
defaults write com.apple.dock mineffect suck

# Removes bouncing animation
defaults write com.apple.dock no-bouncing -bool true

# Dock show / hide
defaults write com.apple.dock autohide -int 1

# Dock magnification
defaults write com.apple.dock magnification -int 1
defaults write com.apple.dock largesize -int 70

killall Dock
