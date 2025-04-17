# ansible - Config management
alias ap-inv="ansible-playbook -i $1"

# asciinema - Record terminal
alias a-play="asciinema play $1"
alias a-rec="asciinema rec $1"
alias a-upload="asciinema upload $1"

# fd-find
alias fdh="fd -H $1"

# fish
alias sfish="source ~/.config/fish/aliases.fish"

# git
alias ghist="history | grep"
alias glog-one="git log --oneline --decorate --graph --parents --stat"
alias glog="git log --decorate --graph --parents --stat"

# grep
alias grep="grep -iE --color=auto"

# lsblk - list block devices
alias lbk="lsblk -o NAME,FSTYPE,LABEL,UUID,MOUNTPOINTS "

# lsd - list directories and contents
alias l="lsd -l"
alias la="lsd -a"
alias ll="lsd -lha"

# openssl
alias ossl-secret="openssl rand -hex 64"

# rsync
alias rsync="rsync -avhP"
alias s-rsync="sudo rsync -avhP"

# systemctl - suspend device
alias sus="systemctl suspend"

# wf-recorder - Record desktop via CLI
alias wfreca="wf-recorder -a -f $1"
alias wfrec="wf-recorder -f $1"

# zellij
alias zel-a="zellij attach"
alias zel-da="zellij delete-all-sessions"
alias zel-d="zellij delete-session"
alias zel-l="zellij list-sessions"
alias zel-n="zellij -s"
alias zel-set="zellij setup"
