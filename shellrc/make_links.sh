# set directories
origin_dir=$(pwd)
dir=$HOME/.shellrc

if [ "$dir" != "$origin_dir" ]; then
	ln -sf $origin_dir $dir
fi

# bash config
ln -sf $dir/bashrc $HOME/.bashrc
ln -sf $dir/bash_profile $HOME/.bash_profile
#ln -sf $dir/inputrc $HOME/.inputrc

# zsh config
ln -sf $dir/zshrc $HOME/.zshrc
ln -sf $dir/zlogin $HOME/.zlogin
