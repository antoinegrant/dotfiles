#!/bin/bash

export BOOTSTRAP_PREFIX=".dotfiles =>";

echo "$(echo $BOOTSTRAP_PREFIX) Start setup..."

# Install Xcode Command Line Tools 
xcode-select --install

# Bootstrap
for file in ./bootstrap/{zsh,homebrew}; do
	[ -r "$file.sh" ] && [ -f "$file.sh" ] && source "$file.sh";
done;
unset file;

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos

echo "$(echo $BOOTSTRAP_PREFIX) 🏁 Setup is done!"