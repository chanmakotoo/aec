#!/bin/sh

cd `dirname $0`
scriptPath=`pwd`

# homebrew
sh homebrew/brew/setup.sh

# fish
## plugin
fish dotfiles/shell/fish/fisher.sh

# anyenv
fish homebrew/anyenv/setup.sh

# fishの再起動
exec fish -l
echo "Please open a new session"
