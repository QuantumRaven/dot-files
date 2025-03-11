. ~/.config/fish/aliases.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add paths to PATH variable
fish_add_path ~/.local/bin

# Initiate Starship config for fish shell

starship init fish | source

# Set up fzf key bindings for fish shell

fzf --fish | source
