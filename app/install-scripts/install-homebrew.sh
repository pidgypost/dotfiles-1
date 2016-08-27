exists() { type -t "$1" > /dev/null 2>&1; }
#^^ move this into bash functions later

echo "[Start] Installing ... Homebrew"

if exists brew; then
#if homebrew is found

    echo "[Sanity Report] Homebrew ... already exists"
    echo "[End] Homebrew ... installation"
    echo "[NOW] Moving On ..."

else
#if homebrew is not found

    echo "[Sanity Report] Homebrew ... was not found"
    echo "[NOW] Attempting to download and install Homebrewn ..."

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 

    echo "[End] Homebrew ... installation"
fi

 
# install all the things 
##!! ./brew.sh 
##!! ./brew-cask.sh
