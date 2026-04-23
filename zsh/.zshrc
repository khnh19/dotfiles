export EDITOR="nvim"

alias c='clear'
alias x='exit'
alias cd='z'
alias n='nvim'

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/Users/khanh/.local/bin:$PATH"
