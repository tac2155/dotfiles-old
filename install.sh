#!/bin/bash

echo "Setting up your Mac..."

echo "installing homebrew"
if test | $(which brew); then
 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# adds brew dependencies and apps
echo "installing brew dependencies and apps"
source brew.sh

echo "set up dropbox"
read -n1 -r -p "Press any key to continure..." key

# restore mackup 
mackup restore

# updates osx
source .osx
