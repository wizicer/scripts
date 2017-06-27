GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
source ~/.git-prompt.sh

export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# refresh shell
alias reload='source ~/.bash_profile'

# Show dirty state in prompt when in Git repos
export GIT_PS1_SHOWDIRTYSTATE=1

# Change prompt
PS1_OLD=${PS1}
export PS1='\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\] \[\033[1;92m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '
