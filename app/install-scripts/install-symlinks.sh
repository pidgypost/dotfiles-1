declare -a FILES_TO_SYMLINK=$(find $path_dotfiles -type f -name ".*" -not -name .DS_Store);

source $path_install_functions/function-create-symlink.sh
