# determines if the user is local or remote true=Local, false=Remote
if [ -z "$SSH_CLIENT" ]; then
	export UNODE=true
else
	export UNODE=false
fi
