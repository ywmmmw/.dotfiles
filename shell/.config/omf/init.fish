
# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

set fish_emoji_width 2
set fish_ambiguous_width 2

function myproxy_on
    set -Ux http_proxy "http://127.0.0.1:8889"
    set -Ux https_proxy "http://127.0.0.1:8889"
    echo "ON" > ~/.my_proxy.pid
end

function myproxy_off
    set -e http_proxy
    set -e https_proxy
    echo "OFF" > ~/.my_proxy.pid
end

alias emc="emacs -nw"

fish_add_path $HOME/.config/composer/vendor/bin/