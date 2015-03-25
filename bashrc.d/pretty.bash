# WITHOUT GET BRANCH
#PS1="\[\e[01;37m\][\[\e[0m\]\[\e[01;33m\]\u@\H\[\e[0m\]\[\e[01;37m\]]\[\e[0m\]\[\e[00;37m\] \w\n\[\e[0m\]"

# WITH GIT BRANCH
PS1="\[\e[01;37m\][\[\e[0m\]\[\e[01;33m\]\u@\H\[\e[0m\]\[\e[01;37m\]]\[\e[0m\]\[\e[00;37m\] \w\[\e[00;36m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 2 | xargs --no-run-if-empty printf ' (%s)')\[\e[0m\]\n\$ "
