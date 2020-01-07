#!/bin/sh

sed -i.backup -e 's/$email/'${email}'/' -e 's/$name/'${name}'/' $scriptPath/dotfiles/gitconfig/template
mv $scriptPath/dotfiles/gitconfig/template $scriptPath/dotfiles/gitconfig/.gitconfig
mv $scriptPath/dotfiles/gitconfig/template.backup $scriptPath/dotfiles/gitconfig/template
ln -s $scriptPath/dotfiles/gitconfig/.gitconfig ~/.gitconfig

