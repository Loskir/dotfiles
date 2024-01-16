# zmodload zsh/zprof

export ZSH="/Users/loskir/.oh-my-zsh"
ZSH_THEME="af-magic-loskir"
plugins=(
    adb
    brew
    docker
    docker-compose
    git
#    wakatime
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
##### WHAT YOU WANT TO DISABLE FOR WARP - BELOW
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true
##### WHAT YOU WANT TO DISABLE FOR WARP - ABOVE
fi

h=()
if [[ -r ~/.ssh/config ]]; then
  h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
fi
# if [[ -r ~/.ssh/known_hosts ]]; then
#   h=($h ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
# fi
if [[ $#h -gt 0 ]]; then
  zstyle ':completion:*:ssh:*' hosts $h
  zstyle ':completion:*:slogin:*' hosts $h
fi

# export PATH="$(yarn global bin):$PATH"
export PATH="/Users/loskir/.yarn/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:/Users/loskir/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/Users/loskir/.deno/bin:$PATH"
export PATH="/Users/loskir/.deta/bin:$PATH"
export PATH="/Users/loskir/Library/Python/3.9/bin:$PATH"

eval "$(fnm env --use-on-cd)"

export EDITOR=micro
export KUBECONFIG=$HOME/.kube/config.yaml:/Users/loskir/Projects/hseapp/hse_kubeconfig.yaml:/Users/loskir/Projects/hseapp/kubeconfig_admin.yaml:/Users/loskir/Projects/hseapp/kubeconfig.yaml:/Users/loskir/Projects/controller/kubeconfig.yaml

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
    # eval "$__conda_setup"
# else
    # if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        # . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    # else
        # export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    # fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

fpath=(~/.zsh $fpath)

autoload -Uz compinit
compinit -u

source <(k9s completion zsh); compdef _k9s k9s
# source <(fnm completions --shell zsh)

alias hsedev-mongo="ssh -N -L 9998:10.0.0.40:27017 loskir@10.0.0.25"

alias prettyjson="python3 -m json.tool"

alias mongod4.2="/opt/homebrew/opt/mongodb-community@4.2/bin/mongod"
alias mongo="/opt/homebrew/opt/mongodb-community@4.2/bin/mongo"

alias esphome="docker run --rm -v \"\${PWD}\":/config -it esphome/esphome"

# eval "$(starship init zsh)"

# zprof

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/Users/loskir/yandex-cloud/path.bash.inc' ]; then source '/Users/loskir/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/Users/loskir/yandex-cloud/completion.zsh.inc' ]; then source '/Users/loskir/yandex-cloud/completion.zsh.inc'; fi

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
