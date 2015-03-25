#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

timestamp=$(date +%F_%T)
dir=$(pwd)
modules="dot-configs scripts shellrc"    # list of files/folders to symlink in homedir

##########

#`git submodule foreach git pull origin master`
`git submodule update --init --recursive`
`git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch'`

# change to the dotfiles directory
#echo "Changing to the $dir directory"
#cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
#for file in $files; do
	#echo " $file:"
	#if [[ -f "$HOME/$file" ]]; then
		#echo "   backing up old file"
		#mv $HOME/$file $olddir
	#fi
	#echo "   creating symlink"
	#ln -sf $dir/$file $HOME/$file
#done
