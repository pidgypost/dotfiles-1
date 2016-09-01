# dotfile setup for a fresh install of OSX 10.11+ 

# Script Paths
app-root=$(dirname "$0")
scriptPath=~/dotfiles-1/app/install-scripts

# Step 1 - Install Xcode Command Line Tools
# This will trigger automatically when attempting to install
# Homebrew in Step 2. Follow the onscreen instructions
# and continue to Homebrew install after complete

#Step 2 - Install Homebrew
#Description:
##Homebrew is a OSX package manager that will install/update/manage
##all the applications we would otherwise manually download and install







##########################################
#### OPEN - Homebrew #####################
##########################################

source $scriptPath/install-homebrew.sh
source $scriptPath/install-brew-formulas.sh
source $scriptPath/install-brew-casks.sh
#install spf13-vim
#curl http://j.mp/spf13-vim3 -L -o - | sh
#symlink dotfiles
#restart terminal
#setup osx
#login to apps with chef

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
