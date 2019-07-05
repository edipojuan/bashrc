alias ale="vi ~/.bash_aliases"
alias aldo="source ~/.bashrc"

RED="\[\033[01;31m\]"
YELLOW="\[\033[01;33m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
NC="\[\033[0m\]"

case $TERM in
    xterm*)
        TITLEBAR='\[\e]0;\u@\h: \w\a\]';
        ;;
    *)
        TITLEBAR="";
        ;;
esac

# PS1="${TITLEBAR}$RED\ $GREEN\u@\h $BLUE\w$YELLOW\ \n$BLUE\$ $NC"
# export PS1="\u\w\[\e[32m\]\h\[\e[m\]\\$ "
# \[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$
# export PS1="\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$"
# export PS1='\e[0;32m\w\e[m $'

alias gs='git status '
alias ga='git add '
alias gaa='git add -A '
alias gb='git branch '
alias gc='git commit '
alias gcm='git commit -m '
alias go='git checkout '
alias gf='git fetch '
alias gp='git pull '

alias cc='clear '

function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]\n▶"
    local __last_color="\[\033[00m\]"
    # export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
	export PS1=" $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt