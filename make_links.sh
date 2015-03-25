#!/bin/bash
############################
# .make_links.sh
# This script runs make_links.sh script within each submodule
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
for mod in $modules; do
	echo " $mod:"
	if [[ -d "$mod" ]]; then
		cd "$mod"
		. make_links.sh
		cd ..
	else
		echo "directory not found! stopping"
		exit 1;
	fi
done
