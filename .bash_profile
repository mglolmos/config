export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export HISTCONTROL=ignoredups

alias l="ls -lh"
alias gs="git status"
alias ts="tig status"

# Print Hostname
echo "🖥   Hostname"
hostname

# prompt
PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '

# add pem keys
source .custom_scripts/add_pem_keys.sh


# bash-completion
source .custom_scripts/bash_completion.sh
source .custom_scripts/git_ps1_configuration.sh
