source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept

alias c='clear'
alias x='exit'
alias n='nvim'
alias t='tmux'
alias l='eza'
alias ll='eza -l'
alias la='eza -la'

export MANPAGER='nvim +Man!'
export EDITOR="nvim"
export VISUAL="nvim"

export JAVA_HOME=$(/usr/libexec/java_home -v 23)
export PATH=$JAVA_HOME/bin:$PATH

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

function cp() {
  g++-14 -O2 -Wall "$1.cpp" -o "$1" && ./"$1" && echo
}

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
