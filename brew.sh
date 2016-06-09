#!/bin/bash
# my attempt for brew.sh based on matthias and paulirish

# Install command-line tools using Hombrew

# make sure using latest Homebrew
brew update

# upgrade any already-installed formulae
brew upgrade

# make sure cask installed
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

# GNU core utililites
brew install coreutils
brew install moreutils
# install GNU 'find', 'locate', 'updatedb', and 'xargs', 'g'-prefixed
brew install findutils
# GNUE 'sed', overwriting built in 'sed'
brew install gnu-sed --with-default-names

# Bash 4
# note: don't forget to add '/usr/local/bin/bash' to '/etc/shells' before running 'chsh'
brew install bash
brew tap homebrew/versions
brew install bash-completion

brew install homebrew/completions/brew-cask-completion

# switch to brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
 echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
 chsh -s /usr/local/bin/bash;
fi;

# install more recent verion of OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp


# Install some stuff
brew install git
brew install git-lfs
brew install hub
brew install lynx
brew install mackup
brew install node
brew install python
brew install rename
brew install rhino
brew install tree
brew install terminal-notifier
brew install thefuck

# install apps
brew cask install alfred
brew cask install atom
brew cask install bartender
brew cask install caffeine
brew cask install dropbox
brew cask install google-chrome
brew cask install google-drive
brew cask install hyperdock
brew cask install iterm2
brew cask install spotify
brew cask install spotify-notifications
brew cask install transmit
brew cask install transmission

brew cleanup
brew cask cleanup
