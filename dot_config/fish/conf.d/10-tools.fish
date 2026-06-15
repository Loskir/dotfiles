# Tool initializations
if status is-interactive
    starship init fish | source
end

fnm env --use-on-cd | source

# Activate mise after fnm so mise takes precedence.
mise activate fish | source
