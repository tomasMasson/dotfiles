function fish_prompt

    # Store last pipe exit status
    set -l pip $pipestatus
    if test $pip = 0
        set color '#5e81ac'
    else
        set color red
    end

    # Store vim mode
    if test $fish_bind_mode = 'insert'
        set prompt '❯'
    end
    if test $fish_bind_mode = 'default'
        set prompt '❮'
    end

    # Handle ssh logins
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    set_color -o
    if test "$USER" = 'root'
        echo -n (set_color red)'# '
    end

    # Initial empty line for less clutter
    echo
    # Get your location
    echo -n (set_color "#8fbcbb")(prompt_pwd)' '\n
    echo -n (set_color $color)$prompt' '
    set_color normal
end

function fish_right_prompt
    echo -n (set_color "#d08770") (date "+%H:%M:%S")
end
