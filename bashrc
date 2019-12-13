if [[ "$OSTYPE" == "linux-gnu" ]]; then
    function color_my_prompt {
        local __user_and_host="\[\033[01;32m\]\u@\h"
        local __cur_location="\[\033[01;34m\]\w"
        local __git_branch_color="\[\033[31m\]"
        #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
        local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
        local __prompt_tail="\[\033[35m\]$"
        local __last_color="\[\033[00m\]"
        export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
    }
    color_my_prompt

elif [[ "$OSTYPE" == "msys" ]]; then
    tgitcommand() {
        start "" "c:\Program Files\TortoiseGit\bin\TortoisegitProc.exe" /command:$1 $2
    }
    alias tgit=tgitcommand
    alias tigit=tgitcommand
    alias gvim='start gvim $1'

    LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
    export LS_COLORS
    alias ls='ls -F --color --show-control-chars'
    alias reload="source ~/.bashrc"
fi

alias pgo='http_proxy=http://10.7.0.131:8119 go $1'

alias gitroot='cd "$(git rev-parse --show-toplevel)"'
alias cls='clear'
alias dir='ls -l'
alias type='cat'
alias cd..='cd ..'
alias cd...='cd ../..'

alias gitacf="git add -A && GIT_AUTHOR_DATE='$(date -u -d -16hours)' GIT_COMMITTER_DATE='$(date -u -d -16hours)' git commit -am"
