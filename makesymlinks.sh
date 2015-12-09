#!/bin/bash

dir=~/dotfiles # dotfiles dir
olddir=~/dotfiles_old # backup for old dotfiles
files="bashrc vimrc gitconfig vim i3" # list of files/folders to symlink

# Create backup directory for old dotfiles
mkdir -p $olddir
# cd into this directory
cd $dir

for file in $files; do
	mv ~/.$file $olddir
	ln -s $dir/$file ~/.$file
done
