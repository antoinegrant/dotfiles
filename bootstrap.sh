#!/bin/bash

export BOOTSTRAP_PREFIX=".dotfiles =>";

echo "$(echo $BOOTSTRAP_PREFIX) Start setup..."

# Bootstrap
for file in ./bootstrap/{zsh,homebrew}; do
	[ -r "$file.sh" ] && [ -f "$file.sh" ] && source "$file.sh";
done;
unset file;

echo "$(echo $BOOTSTRAP_PREFIX) 🏁 Setup is done!"