# Install command-line tools using Homebrew

brew update
brew upgrade

brew install vim --with-override-system-vi
brew install git
brew install node # This installs `npm` too using the recommended installation method
brew install wget --with-iri

brew install bash
brew install zsh
brew install coreutils
brew install findutils
brew install gnu-sed --with-default-names
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install rename
brew install tree

brew cleanup





##!! brew install hub
##!! brew install moreutils
##!! brew tap homebrew/versions
##!! brew install bash-completion2
##!! brew install homebrew/completions/brew-cask-completion
##!! brew install grc
##!! brew install entr
##!! brew install mtr
    # allow mtr to run without sudo
    ##!! mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
    ##!! sudo chmod 4755 $mtrlocation/sbin/mtr
    ##!! sudo chown root $mtrlocation/sbin/mtr
##!! brew install the_silver_searcher
##!! brew install fzf
##!! brew install zopfli
##!! brew install imagemagick --with-webp
##!! brew install pv
##!! brew install ffmpeg --with-libvpx
##!! brew install terminal-notifier
##!! brew install android-platform-tools
##!! brew install pidcat   # colored logcat guy
