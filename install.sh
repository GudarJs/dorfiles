#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
files="icons oh-my-zsh themes vscode bashrc profile tmux.conf vimrc zshrc"    # list of files/folders to symlink in homedir

##########

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Removing existing dotfiles from ~ to $olddir"
    rm -rf ~/.$file
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
