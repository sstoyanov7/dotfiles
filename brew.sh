#!/usr/bin/env bash

# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
# Install Bash completion
brew install bash-completion

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen
brew install homebrew/dupes/zlib
brew install homebrew/php/php56 --with-gmp
brew install homebrew/php/php56-xdebug
brew install homebrew/php/php-code-sniffer

# Install other useful binaries
brew install ack
brew install bfg
brew install grc
brew install git
brew install imagemagick --with-webp
brew install hub
brew install htop-osx
brew install lastpass-cli --with-pinentry --with-doc
brew install libidn
brew install node # This installs `npm` too using the recommended installation method
brew install p7zip
brew install pigz
brew install pv
brew install rbenv
brew install rename
brew install ruby-build
brew install tree
brew install vagrant-completion
brew install webkit2png
brew install zopfli

# Remove outdated versions from the cellar
brew cleanup

# Print installed formulae
brew list
