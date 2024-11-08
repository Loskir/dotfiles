[[ -f "$HOME/.bash_profile"  ]] && source ~/.bash_profile

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd --resolve-engines --version-file-strategy recursive)"
eval "$(zoxide init zsh --cmd cd)"

export EDITOR="micro"

export HOMEBREW_NO_AUTO_UPDATE=1

export BAT_THEME="TwoDark"

export FPATH=~/.zfunc:$FPATH

# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down
# HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bold"
# HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="fg=#FFFFFF,bold"
# HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_TIMEOUT="0.1"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Disable oh-my-zsh updates
DISABLE_AUTO_UPDATE=true

source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

alias ls='eza'
alias cat='bat'
