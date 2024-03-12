source ~/.bash_profile

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd --version-file-strategy recursive)"
eval "$(zoxide init zsh --cmd cd)"

export EDITOR="micro"

# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down
# HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bold"
# HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="fg=#FFFFFF,bold"
# HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_TIMEOUT="0.1"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

alias ls='eza'
alias cat='bat'
