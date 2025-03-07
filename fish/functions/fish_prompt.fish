set purple (set_color 9900cc)
set white (set_color white)
set green (set_color 00ff00)
set orange (set_color ce5910)
set blue (set_color 3366ff)
set red (set_color ff3385)

function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    # User
    set_color $fish_color_user

    set_color brwhite
    echo -n "╔─["

    #whoami
    if test "$TERM" = "linux"
        set_color magenta
    else
        set_color purple
    end
    echo -n (whoami)

    #@
    if test "$TERM" = "linux"
        set_color bryellow
    else
        set_color red
    end
    echo -n "@"

    #hostname
    if test "$TERM" = "linux"
        set_color brblue
    else
        set_color green
    end
    echo -n (prompt_hostname):

    
    if test "$TERM" = "linux"
        set_color 
    else
        set_color blue 
    end
    echo -n (prompt_pwd)

    __terlar_git_prompt
    __fish_hg_prompt

    set_color white
    echo -n "]═─-"
    
    echo
    echo -n '╚═─-'
    if not test $last_status -eq 0
        echo -n '('
        set_color $fish_color_error
        echo -n $last_status
        set_color white
        echo -n ')'
        set_color $fish_color_error
    end

    if test "$TERM" = "linux"
        echo -n '»'
        set_color normal
    else
        echo -n '➤ '
        set_color normal
    end
end
