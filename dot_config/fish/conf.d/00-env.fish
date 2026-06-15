# Paths
if test -d /opt/homebrew/bin
    fish_add_path /opt/homebrew/bin
end

if command -q go
    fish_add_path (go env GOPATH)/bin
end

# Environment
set -x EDITOR micro
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x BAT_THEME TwoDark

set -U fish_greeting # Disable welcome message
