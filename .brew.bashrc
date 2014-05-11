#!/usr/bin/env bash

# Add bash completion for brew installed formuale
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	source $(brew --prefix)/etc/bash_completion
fi

# If available use git completion
# Installed by brew in this location
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
	source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi

# Enable vagrant completion if available
if [ -f $(brew --prefix vagrant-completion)/etc/bash_completion.d/vagrant ]; then
	source $(brew --prefix vagrant-completion)/etc/bash_completion.d/vagrant
fi

# Enable hub completion if available
if [ -f $(brew --prefix hub)/etc/hub.bash_completion.sh ]; then
	source $(brew --prefix hub)/etc/hub.bash_completion.sh
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
