if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add paths to PATH variable
fish_add_path $HOME/bin
fish_add_path $HOME/go/bin

# Initiate Starship config for fish shell

starship init fish | source

# Set up fzf key bindings for fish shell

fzf --fish | source

# Set neovim as default editor
set -gx EDITOR nvim
