

# to maintain cask ....
brew update
brew upgrade brew-cask

# Install native apps


# daily
brew cask install spectacle
brew cask install gyazo
brew cask install rescuetime
brew cask install flux
brew cask install slack
brew cask install dropbox
brew cask install box-sync
brew cask install box-edit
brew cask install lastpass
brew cask install adobe-creative-cloud
##!! brew cask install 1password

# dev
brew cask install iterm2
brew cask install sublime-text
brew cask install vmware-fusion
##!! brew cask install imagealpha
##!! brew cask install imageoptim

# fun
##!! brew cask install limechat
##!! brew cask install miro-video-converter
##!! brew cask install horndis               # usb tethering

# browsers
brew cask install google-chrome
brew cask install chrome-devtools
brew cask install firefox
##!! brew cask install google-chrome-canary
##!! brew cask install firefoxnightly
##!! brew cask install webkit-nightly
##!! brew cask install chromium
##!! brew cask install torbrowser

# less often
##!! brew cask install disk-inventory-x
##!! brew cask install screenflow
##!! brew cask install vlc
##!! brew cask install gpgtools
##!! brew cask install licecap
##!! brew cask install utorrent

brew cleanup
brew cask cleanup
