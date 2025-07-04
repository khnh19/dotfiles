source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey '^e' autosuggest-execute
bindkey '^w' autosuggest-accept

eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
eval "$(fzf --zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rust
export RUST_HOME="$HOME/.cargo/env"
case ":$PATH:" in
  *":$RUST_HOME:"*) ;;
  *) export PATH="$RUST_HOME:$PATH" ;;
esac
# rust end

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

export EDITOR="nvim"
export VISUAL="nvim"

alias c='clear'
alias x='exit'
alias n='nvim'
alias t='tmux'
alias l='eza'
alias ll='eza -l'
alias la='eza -la'
