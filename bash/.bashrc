[[ $- != *i* ]] && return # dont load .bashrc config on not interactive shells like ssh
PS1='\u \W\ $ ' # Config initial prompt

# Paths
export PATH="$HOME/.local/bin:$PATH"

# Basic Alias
alias ls='ls --color=auto'
alias lsa='ls -a --color=auto'

# Code Editor
alias h='helix'

# Zoxide
eval "$(zoxide init bash)"
