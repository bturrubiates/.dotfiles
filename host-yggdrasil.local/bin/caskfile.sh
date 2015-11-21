#!/bin/zsh

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

formulas=(spotify spotify-notifications atom macvim limechat virtualbox vlc  \
          sublime-text3 filezilla sourcetree kaleidoscope mou calibre slack  \
          rdio lighttable google-chrome-canary thunderbird evernote caffeine \
          adium flux yed skim mactex macdown clementine alfred aurora sshfs  \
          karabiner iterm2 spectacle seil anybar)

for formula in "${formulas[@]}"
do
  brew cask install "$formula"
done
