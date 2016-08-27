app-root=$(dirname "$0")
scriptPath=~/dotfiles-1/app/install-scripts


#########################################
#### OPEN - XCode Command Line Tools ####
#########################################
# Desctiption:
## This snippet will walk the user through installing XCode CLT if it is not installed
# Credits:
## https://github.com/alrra/dotfiles/blob/ff123ca9b9b/os/os_x/installs/install_xcode.sh
## https://github.com/alrra/dotfiles/issues/13
## https://github.com/alrra/dotfiles/issues/10

echo "[Start] Installing ... XCode Command Line Tools"

if xcode-select --print-path &> /dev/null; then
# if xcode clt is found

    echo "[Sanity Report] Xcode CLT ... already exists"
    echo "[End] Xcode Command Line Tools ... installation"
    echo "[NOW]Moving On ..."

else
#if xcode clt is not found

    echo "[Sanity Report] Xcode CLT ... was not found"
    echo "[NOW] Attempting to download and install Xcode CLT"

    echo "Xcode CLT were not found, attempting to install them now ..."

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until the XCode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? 'Install XCode Command Line Tools'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Point the `xcode-select` developer directory to
    # the appropriate directory from within `Xcode.app`

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
    print_result $? 'Make "xcode-select" developer directory point to Xcode'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Prompt user to agree to the terms of the Xcode license

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'
    
    echo "[End] Xcode Command Line Tools ... installation"

fi
##########################################
#### CLOSE - XCode Command Line Tools ####
##########################################



##########################################
#### OPEN - Homebrew #####################
##########################################

source $scriptPath/install-homebrew.sh
source $scriptPath/install-brew-formulas.sh

##########################################
#### CLOSE - Homebrew ####################
##########################################



##############################################################################################################
### install of common things
###

# github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
##!! bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)


# Type `git open` to open the GitHub page or website for a repository.
##!! npm install -g git-open

# fancy listing of recent branches
##!! npm install -g git-recent

# sexy git diffs
##!! npm install -g diff-so-fancy

# trash as the safe `rm` alternative
##!! npm install --global trash-cli


# github.com/rupa/z   - oh how i love you
##!! git clone https://github.com/rupa/z.git ~/code/z
# consider reusing your current .z file if possible. it's painful to rebuild :)
# z is hooked up in .bash_profile


# github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
##!! git clone https://github.com/thebitguru/play-button-itunes-patch ~/code/play-button-itunes-patch


# my magic photobooth symlink -> dropbox. I love it.
# 	 + first move Photo Booth folder out of Pictures
# 	 + then start Photo Booth. It'll ask where to put the library.
# 	 + put it in Dropbox/public
# 	* Now… you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# 	* then you grab public URL and send off your video message in a heartbeat.


# for the c alias (syntax highlighted cat)
##!! sudo easy_install Pygments


# change to bash 4 (installed by homebrew)
##!! BASHPATH=$(brew --prefix)/bin/bash
#sudo echo $BASHPATH >> /etc/shells
##!! sudo bash -c 'echo $(brew --prefix)/bin/bash >> /etc/shells'
##!! chsh -s $BASHPATH # will set for current user only.
##!! echo $BASH_VERSION # should be 4.x not the old 3.2.X
# Later, confirm iterm settings aren't conflicting.


# iterm with more margin! http://hackr.it/articles/prettier-gutter-in-iterm-2/
#   (admittedly not as easy to maintain)


# setting up the sublime symlink
##!! ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl


###
##############################################################################################################



##############################################################################################################
### remaining configuration
###

# go read mathias, paulmillr, gf3, alraa's dotfiles to see what's worth stealing.

# prezto and antigen communties also have great stuff
#   github.com/sorin-ionescu/prezto/blob/master/modules/utility/init.zsh

# set up osx defaults
#   maybe something else in here https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
##!! sh .osx

# setup and run Rescuetime!

###
##############################################################################################################



##############################################################################################################
### symlinks to link dotfiles into ~/
###

#   move git credentials into ~/.gitconfig.local    	http://stackoverflow.com/a/13615531/89484
#   now .gitconfig can be shared across all machines and only the .local changes

# symlink it up!
##!! ./symlink-setup.sh

# add manual symlink for .ssh/config and probably .config/fish

###
##############################################################################################################
