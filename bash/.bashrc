[[ $- != *i* ]] && return # dont load .bashrc config on not interactive shells like ssh
# PS1='\u \W\ $ ' # Config initial prompt

# Paths
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cache/.bun/bin:$PATH"
export PATH="$HOME/.cargo/bin/:$PATH"
export PATH="$HOME/.local/share/npm/bin:$PATH"

# Basic Alias
alias ls='ls --color=auto'
alias lsa='ls -a --color=auto'

# Code Editor
alias h='helix'

# Lazygit
alias lg='lazygit'

# Starship
eval "$(starship init bash)"

# Zoxide
eval "$(zoxide init bash)"

# opencode
export PATH=/home/antoinepdev/.opencode/bin:$PATH
