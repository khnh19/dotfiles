source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

export EDITOR="nvim"
export VISUAL="nvim"

alias c='clear'
alias x='exit'
alias n='nvim'
alias t='tmux'
alias l='eza'
alias ll='eza -l'
alias g++='g++-14'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
