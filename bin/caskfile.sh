#!/bin/zsh

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

formulas=(spotify spotify-notifications atom macvim limechat virtualbox vlc  \
          sublime-text3 filezilla sourcetree kaleidoscope mou calibre slack  \
          rdio lighttable google-chrome-canary thunderbird evernote caffeine \
          adium flux yed)

for formula in "${formulas[@]}"
do
  brew cask install "$formula"
done
