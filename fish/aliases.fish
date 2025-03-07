alias ap-inv="ansible-playbook -i $1"
alias a-play="asciinema play $1"
alias a-rec="asciinema rec $1"
alias a-upload="asciinema upload $1"
alias dusize="du -sh * | sort -hr"
alias gh="history | grep"
alias grep="grep -iE --color=auto"
alias lbk="lsblk -o NAME,FSTYPE,LABEL,UUID,MOUNTPOINTS "
alias l="lsd -l"
alias la="lsd -a"
alias ll="lsd -lha"
alias nos-switch="sudo nixos-rebuild switch"
alias nos-sync="sudo rsync -avhP ./*.nix ./users ./modules /etc/nixos/"
alias nos-test="sudo nixos-rebuild test"
alias nvc-git="git clone https://github.com/NvChad/starter ~/.config/nvim"
alias rsync="rsync -avhP"
alias s-rsync="sudo rsync -avhP"
alias sus="systemctl suspend"
alias wfreca="wf-recorder -a -f $1"
alias wfrec="wf-recorder -f $1"
alias zel-a="zellij attach"
alias zel-da="zellij delete-all-sessions"
alias zel-d="zellij delete-session"
alias zel-l="zellij list-sessions"
alias zel-n="zellij -s"
alias zel-set="zellij setup"
