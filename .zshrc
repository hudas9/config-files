# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# ZSH Theme
ZSH_THEME="robbyrussell"
# ZSH Plugins
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Alias
alias reload-zsh="source ~/.zshrc"
alias cd="z"
alias vim="nvim"
alias ls="eza"
alias ll="eza -l -g --icons"
alias lla="ll -a"
alias cat="batcat --theme='gruvbox-dark'"
alias sysinfo="fastfetch"

# Zoxide
eval "$(zoxide init zsh)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Go Lang
export PATH=$PATH:/home/huda/BIN/go1.22.2/bin
