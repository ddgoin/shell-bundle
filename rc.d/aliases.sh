# trick to make aliases available when using sudo
alias sudo='sudo '

# common ls aliases
alias ls="ls --color=tty"
alias ll='ls -hal'

# always use vim
alias vi='vim'

# custom scripts
#alias go='tmuxgo.sh'
alias go='tmuxgo.sh'
alias alert='say-note.sh'
alias nwycdb='mysqlnwyc.sh'

# misc aliases
alias pandora="aoss pianobar"
alias say='echo "$1" | espeak -s 150 2>/dev/null'
