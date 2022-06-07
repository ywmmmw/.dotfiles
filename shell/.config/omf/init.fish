# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

set fish_emoji_width 2
set fish_ambiguous_width 2

# fish_add_path $HOME/.config/composer/vendor/bin/

# set emacs server and alias

set -x ALTERNATE_EDITOR ""

# $EDITOR opens in terminal
set -x EDITOR "emacsclient -t -a emacs"
# $VISUAL opens in GUI mode
set -x VISUAL "emacsclient -c -a emacs"
alias emc="emacsclient -c"
alias emcnw="emacsclient -c -t"