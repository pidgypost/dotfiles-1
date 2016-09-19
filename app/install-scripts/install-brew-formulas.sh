# Install command-line tools using Homebrew

#sanity check
brew update
brew upgrade --all

#core features
##IDE
brew install vim --with-override-system-vi --with-lua

##Versioning
brew install git

##Shells
brew install bash
brew install zsh
    # Switch to using brew-installed zsh as default shell
    if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
      echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
      chsh -s /usr/local/bin/zsh;
    fi;
brew install antigen

#Nice to haves
##OSX/Terminal tools
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
brew install wget --with-iri
brew install highlight

##ZSH Addons
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

##Coding Goodies
brew install node # This installs `npm` too using the recommended installation method
brew install fzf
brew install hub
brew install tmux
brew install z

#sanity check
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
