# Install command-line tools using Homebrew

brew update
brew upgrade --all

brew install vim --with-override-system-vi --with-lua
brew install git
brew install node # This installs `npm` too using the recommended installation method
brew install wget --with-iri
brew install fzf
brew install hub
brew install tmux
brew install z
brew install highlight

brew install bash
brew install zsh
# Switch to using brew-installed zsh as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

brew install coreutils
if [ ! -L /usr/local/bin/gsha256sum ]; then
  sudo ln -sf /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
fi

brew install findutils
brew install gnu-sed --with-default-names
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install rename
brew install tree
brew install ack

#install vim setup
curl http://j.mp/spf13-vim3 -L -o - | sh

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
