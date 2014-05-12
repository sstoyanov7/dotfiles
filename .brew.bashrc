#!/usr/bin/env bash

# Add bash completion for brew installed formuale
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	source $(brew --prefix)/etc/bash_completion
fi

# Add completion for `brew` itself.
source `brew --repository`/Library/Contributions/brew_bash_completion.sh

# Brew & Cask aliases
alias b="brew"
alias cask="brew cask"

# Enable brew command autocompletion for `b` alias as well
complete -o default -F _brew b

# Enable vagrant command autocompletion for `vg` alias as well
complete -o default -F _vagrant vg
