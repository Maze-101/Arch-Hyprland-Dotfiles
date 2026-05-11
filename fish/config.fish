if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias f='fastfetch'
alias c='code'
alias gc='git commit'
alias s='sudo pacman -S'
alias lang='setxkbmap -layout us,ara -option grp:alt_shift_toggle'
starship init fish | source
