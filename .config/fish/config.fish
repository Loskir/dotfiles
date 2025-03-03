fish_add_path /opt/homebrew/bin

set -x EDITOR micro
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x BAT_THEME TwoDark

set -U fish_greeting # Disable welcome message

if status is-interactive
    starship init fish | source
end

fnm env --use-on-cd | source
zoxide init fish --cmd cd | source

alias ls=eza
alias cat=bat
