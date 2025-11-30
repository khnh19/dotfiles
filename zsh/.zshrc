source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^w' autosuggest-accept
bindkey '^e' autosuggest-execute

eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

alias c='clear'
alias x='exit'
alias t='tmux'
alias n='nvim'
alias l='eza'
alias ll='eza -l'
alias la='eza -la'

export EDITOR="nvim"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
