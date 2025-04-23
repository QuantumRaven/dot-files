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
$env.config.buffer_editor = "nvim"
$env.EDITOR = "nvim"

# Disable banner
$env.config.show_banner = false

# Aliases

# ansible - Configuration Management

# Usage: ap-inv inventor.ini some_playbook.yaml
alias ap-inv = ansible-playbook -i

# asciinema - Record terminal

# Usage: a-play filename.cast
alias a-play = asciinema play

# Usage: a-rec filename.cast
alias a-rec = asciinema rec

# Usage: a-up filename.cast
alias a-up = asciinema upload

# fd-find

# Usage: fdh file dir
alias fdh = fd -H


# fzf

# Usage: nfzfd
def nfzfd [] { fdh -t f | fzf --preview "bat {}" --bind "enter:execute(nvim {})" --reverse }

# grep

# Usage: grep "text_to_find" filename
alias grep = grep -iE --color=auto

# ls

# Usage: l dir - Long format
alias l = ls -l

# Usage: la dir - Display hidden dirs
alias la = ls -a

# Usage: ll dir - Long format + hidden dirs
alias ll = ls -la

# openssl

# Usage: ossl-secret
alias ossl-secret = openssl rand -hex 64

# rsync

# Usage: rsync source dest
alias rsync = rsync -avhP

# Usage: s-rsync source dest
alias s-rsync = sudo rsync -avhP

# systemctl

# Usage: sus
alias sus = systemctl suspend

# wf-recorder

# Usage: wfra filename.ext
alias wfra = wf-recorder -a -f

# Usage: wfr filename.ext
alias wfr = wf-recorder -f

# zellij

# Usage: zel-a session_name
alias zel-a = zellij attach

# Usage: zel-da
alias zel-da = zellij delete-all-sessions

# Usage: zel-d session_name
alias zel-d = zellij delete-session

# Usage: zel-l
alias zel-l = zellij list-sessions

# Usage: zel-n session_name
alias zel-n = zellij -s

# Usage: zel-set
alias zel-set = zellij setup

# Applications

# startship.rs setup
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
