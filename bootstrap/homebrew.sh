#!/bin/bash

echo "$(echo $BOOTSTRAP_PREFIX) 👨‍💻 Setting up homebrew..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    echo "$(echo $BOOTSTRAP_PREFIX) 💻 Installing homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else 
    echo "$(echo $BOOTSTRAP_PREFIX) ✅ Homebrew is already installed"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Taps
brew tap 'homebrew/cask'
brew tap 'homebrew/cask-eid'
brew tap 'homebrew/cask-versions'

# Binaries
brew install 'ack'
brew install 'coreutils' # Those that come with macOS are outdated
brew install 'mackup'
brew install 'tree'
brew install 'mas' # Mac App Store manager
brew install 'gnupg'

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# Apps
brew cask install 'alfred'
brew cask install 'slack'
brew cask install 'sequel-pro'
brew cask install 'dynalist'
brew cask install 'visual-studio-code'

# Mac App Store
mas install 1333542190 # 1Password
mas install 1147396723 # WhatsApp

# Upgrade any already-installed formulae.
brew upgrade

# Remove outdated versions from the cellar.
brew cleanup
