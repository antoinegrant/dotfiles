#!/bin/bash

echo "$(echo $BOOTSTRAP_PREFIX) 💻 Setting up Oh-My-Zsh..."

ZSHRC="$HOME/.zshrc"
OH_MY_ZSH="$HOME/.oh-my-zsh"

if [[ ! -f "$ZSHRC" && ! -d "$OH_MY_ZSH" ]]; then
    echo "$(echo $BOOTSTRAP_PREFIX) 💻 Setting up Oh-My-Zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
else 
    echo "$(echo $BOOTSTRAP_PREFIX) ✅ Oh-My-Zsh is already installed"
fi
