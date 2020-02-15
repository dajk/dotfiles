#!/bin/sh

theme="cat ./Solarized\ Dark\ ansi.terminal"
plutil -replace "Window Settings"."Solarized Dark ansi" -xml "${theme}" ~/Library/Preferences/com.apple.Terminal.plist
plutil -replace "Startup Window Settings" -string "Solarized Dark ansi" ~/Library/Preferences/com.apple.Terminal.plist
plutil -replace "Default Window Settings" -string "Solarized Dark ansi" ~/Library/Preferences/com.apple.Terminal.plist
killall cfprefsd && killall Finder
