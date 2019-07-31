export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export HISTCONTROL=ignoredups

alias l="ls -lh"
alias gs="git status"
alias ts="tig status"

# Print HOSTNAME
printf "\e[1;36m > HOSTNAME: ${HOSTNAME} \n\e[0m"

# prompt
PS1='$([ $? == 0 ] && echo "\[\e[32m\]●\[\e[m\]" || echo "\[\e[1;31m\](*)\[\e[0m\]") \[\e[32m\]\u\[\e[m\] \[\e[36m\]\w\[\e[m\] \[\e[32m\]$(__git_ps1)\n└─ \$ ▶\[\e[m\] '

# add pem keys
source .custom_scripts/add_pem_keys.sh


# bash-completion
source .custom_scripts/bash_completion.sh
source .custom_scripts/git_ps1_configuration.sh

