export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export HISTCONTROL=ignoredups

alias l="ls -lh"
alias gs="git status"
alias ts="tig status"

# prompt
PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# add pem keys
function ssh-add-pem-keys ()
{
    {
        for key in `ls ~/.ssh/*.pem`;
        do
            ssh-add $key;
        done
    } >&/dev/null
}


ssh-add-pem-keys
