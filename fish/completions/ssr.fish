function __fish_ssr_complete
    set -l hosts (grep '^Host ' ~/.ssh/config | awk '{print $2}')
    for host in $hosts
        printf "%s\n" $host
    end
end

complete -c ssr -a '(__fish_ssr_complete)'
