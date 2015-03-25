function set_term_title(){
	echo -en "\033]0;$1\a"
}

# lowercase a string
function lowercase(){
	echo $(echo $1 | tr '[:upper:]' '[:lower:]')
}

function uppercase(){
	echo $(echo $1 | tr '[:lower:]' '[:upper:]')
}
