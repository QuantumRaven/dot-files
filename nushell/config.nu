# config.nu
#
# Installed by:
# version = "0.103.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.



# Environment

# Custom paths
# $env.$PATH = 

# Default editor
$env.config.buffer_editor = "/usr/bin/nvim"

# Disable banner
$env.config.show_banner = false

# Aliases

# ansible - Configuration Management

# Shorten ansible-playbook command
alias ap-inv = ansible-playbook -i

# asciinema - Record terminal

# Play designated asciinema file
alias a-play = asciinema play

# Record terminal and save to designated file
alias a-rec = asciinema rec

# Upload designated file to asciinema website
alias a-up = asciinema upload

# fd-find

# Find hidden files
alias fdh = fd -H


# fzf

# Use fuzzy finder and fd to sort through files with a preview, then open in nvim on ENTER
def nfzfd [] { fdh -t f | fzf --preview "bat {}" --bind "enter:execute(nvim {})" --reverse }

# grep

# grep with color. case-insensitive, and search multiple tags "log|access|etc."
alias grep = grep -iE --color=auto

# ls

# List files/directories in long format
alias l = ls -l

# List hidden files/directories
alias la = ls -a

# List directory contents (includes hidden files/dirs) in long format
alias ll = ls -la

# openssl

# Generate secrets
alias ossl-secret = openssl rand -hex 64

# rsync

# Synchronize files with -avhP
alias rsync = rsync -avhP

# Synchronize files with -avhP using sudo
alias s-rsync = sudo rsync -avhP

# systemctl

# Suspend device
alias sus = systemctl suspend

# wf-recorder

# Record screen with audio
alias wfra = wf-recorder -a -f

# Record screen without audio
alias wfr = wf-recorder -f

# zellij

# Attach to zellij session
alias zel-a = zellij attach

# Delete all zellij sessions
alias zel-da = zellij delete-all-sessions

# Delete a specific zellij session
alias zel-d = zellij delete-session

# List zellij sessions
alias zel-l = zellij list-sessions

# Start a new zellij session with a specific name
alias zel-n = zellij -s

# Setup zellij
alias zel-set = zellij setup

# Applications

# startship.rs setup
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
