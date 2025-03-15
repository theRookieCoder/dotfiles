# Disable dir name shortening
set -g fish_prompt_pwd_dir_length 0
# Clear shell greeting
set fish_greeting

function fish_prompt
    # Username in purple
    set_color magenta
    printf "$USER "

    # @ in white
    set_color normal
    printf "@ "
    
    # Cyan coloured cwd
    set_color cyan
    printf (prompt_pwd)" "

    # Yellow prompt arrow
    set_color yellow
    printf "-> "

    # Reset colour
    set_color normal
end

function fish_right_prompt
    # Buffer the error code
    set code $status

    if test $code -eq 0
        # If successful, print a green tick
        set_color green
        printf "✓ "
    else
        # Else print a red cross with the error code
        set_color red
        printf "$code × "
    end

    # Print time in blue
    set_color blue
    date +%H:%M:%S
end
