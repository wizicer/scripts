tgitcommand() {
    /c/Program\ Files/TortoiseGit/bin/TortoisegitProc.exe /command:$1 $2
}

alias tgit=tgitcommand
alias tigit=tgitcommand

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS
alias ls='ls -F --color --show-control-chars'

alias gvim='start gvim $1'

alias reload="source ~/.bashrc"

alias gitroot='cd "$(git rev-parse --show-toplevel)"'

alias cls='clear'
alias dir='ls -l'
alias type='cat'
