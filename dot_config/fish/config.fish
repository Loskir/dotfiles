fish_add_path /opt/homebrew/bin

if command -q go
    fish_add_path (go env GOPATH)/bin
end

set -x EDITOR micro
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x BAT_THEME TwoDark

set -U fish_greeting # Disable welcome message

if status is-interactive
    starship init fish | source
end

fnm env --use-on-cd | source

# Activate mise after fnm so mise takes precedence.
mise activate fish | source

alias ls=eza
alias cat=bat
alias c="claude --allow-dangerously-skip-permissions"
alias rcm-cli-local="task -t /Users/loskir/rcm/Taskfile.yaml cli:run --"

set ANDROID_HOME $HOME/Library/Android/sdk
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools

# Added by Windsurf
fish_add_path /Users/loskir/.codeium/windsurf/bin

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/loskir/.lmstudio/bin
# End of LM Studio CLI section

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/homebrew/share/google-cloud-sdk/path.fish.inc' ]; . '/opt/homebrew/share/google-cloud-sdk/path.fish.inc'; end

# opencode
fish_add_path /Users/loskir/.opencode/bin

if status is-interactive
    # zoxide init fish --cmd cd | source
end

# Added by Antigravity
fish_add_path /Users/loskir/.antigravity/antigravity/bin
