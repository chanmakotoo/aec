#!/bin/sh

cd `dirname $0`
scriptPath=`pwd`

echo "githubに登録しているメアドを入力してください"
read email
echo "githubで利用しているアカウント名を入力してください"
read name

# Repositoryを作成
mkdir ~/Repository

# .ssh
#source dotfiles/ssh/init.sh
# .gitconfig
source dotfiles/gitconfig/init.sh

# homebrew
sh homebrew/brew/init.sh

# fish
source dotfiles/shell/fish/init.sh

# anyenv
sh homebrew/anyenv/init.sh

# fishを適用
chsh -s /usr/local/bin/fish
exec fish -l

echo "Please open a new session"
