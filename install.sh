#!/usr/bin/env bash

# Install Command Line Tools
xcode-select --instal

# Install Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brew formulae
brew bundle Brewfile

# Install apps
brew bundle Caskfile

# Install Composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=$HOME/bin --filename=composer
