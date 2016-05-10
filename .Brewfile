# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew 'coreutils'
# Install some other useful utilities like `sponge`
brew 'moreutils'
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew 'findutils'
# Install GNU `sed`, overwriting the built-in `sed`
brew 'gnu-sed', args: ['default-names']
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew 'bash'
# Install Bash completion
brew 'bash-completion'

# Install useful completions
brew 'homebrew/completions/apm-bash-completion'
brew 'homebrew/completions/brew-cask-completion'
brew 'homebrew/completions/composer-completion'
brew 'homebrew/completions/bundler-completion'
brew 'homebrew/completions/gem-completion'
brew 'homebrew/completions/grunt-completion'
brew 'homebrew/completions/open-completion'
brew 'homebrew/completions/vagrant-completion'

# Install wget with IRI support
brew 'wget', args: ['with-iri']

# Install more recent versions of some OS X tools
brew 'vim', args: ['override-system-vi']
brew 'homebrew/dupes/grep'
brew 'homebrew/dupes/screen'
brew 'homebrew/dupes/zlib'

# Install PHP and tools
brew 'homebrew/php/php70', args: ['with-gmp']
brew 'homebrew/php/php70-xdebug'
brew 'homebrew/php/php-code-sniffer'
brew 'homebrew/php/phpunit'

# Install other useful binaries
brew 'ack'
brew 'aria2'
brew 'bfg'
brew 'cloc'
brew 'cmake'
brew 'diff-so-fancy'
brew 'git'
brew 'imagemagick', args: ['with-webp']
brew 'hub'
brew 'htop-osx'
brew 'jp2a'
brew 'jpegoptim'
brew 'keybase'
brew 'lastpass-cli', args: ['with-pinentry', 'with-doc']
tap 'neovim/neovim'
brew 'neovim/neovim/neovim'
brew 'node' # This installs `npm` too using the recommended installation method
brew 'openssl'
brew 'optipng'
brew 'p7zip'
brew 'pigz'
brew 'pv'
brew 'python3'
brew 'rbenv'
brew 'rbenv-binstubs'
brew 'rename'
brew 'subliminal'
brew 'tree'
brew 'webkit2png'
brew 'youtube-dl'
brew 'zopfli'

# Install Brew Cask along with Desktop apps
tap 'caskroom/cask'
tap 'caskroom/fonts'
tap 'caskroom/versions'

cask '1password-beta'
cask 'atom-beta'
cask 'caret'
cask 'firefox'
cask 'font-source-code-pro'
cask 'google-chrome-dev'
cask 'google-drive'
cask 'google-photos-backup'
cask 'heroku-toolbelt'
cask 'imagealpha'
cask 'imageoptim'
cask 'iterm2-nightly'
cask 'java'
cask 'kindle'
cask 'lastpass'
cask 'licecap'
cask 'monodraw'
cask 'mplayerx'
cask 'rescuetime'
cask 'sequel-pro-nightly'
cask 'sketch'
cask 'slack'
cask 'sublime-text-dev'
cask 'the-unarchiver'
cask 'vagrant'
cask 'virtualbox'
cask 'yubikey-personalization-gui'

# Quick Look plugins
# See https://github.com/sindresorhus/quick-look-plugins
cask 'betterzipql'
cask 'qlcolorcode'
cask 'quicklook-csv'
cask 'quicklook-json'
cask 'qlmarkdown'
cask 'qlprettypatch'
cask 'suspicious-package'
cask 'qlstephen'
cask 'webpquicklook'
