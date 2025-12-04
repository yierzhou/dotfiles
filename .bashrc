########################################
##             my .bashrc             ##
########################################

export HISTSIZE=10000
export HISTFILESIZE=10000

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# bash integration of cli tools
[ -x "$(command -v starship)" ] && eval "$(starship init bash)"
[ -x "$(command -v zoxide)" ] && eval "$(zoxide init --cmd cd bash)"
eval "$(fzf --bash)"

# proxy
export http_proxy=http://127.0.0.1:7897
export https_proxy=http://127.0.0.1:7897
export no_proxy=localhost,127.0.0.1

# FZF
export FZF_DEFAULT_COMMAND="rg --files"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS='--preview "head {}"' # disable FZF preview

# alias
if [[ -x $(command -v eza) ]]; then
	alias ls='eza --icons'
	alias l='eza --icons --sort Name'
	alias ll='eza --icons --sort Name --long'
	alias lh='eza --icons --sort newest --group --long'
else
	alias ls='ls --color=auto'
	alias lh='ls -alhrt --time-style=long-iso'
fi

alias vim='nvim'