#!/bin/bash
DIR="$HOME/Pictures/Wallpapers"

if ! pgrep -x "awww-daemon" > /dev/null; then
    awww-daemon &
    sleep 0.5
fi

if [[ -d "$DIR" ]]; then
    SELECTION=$(ls "$DIR" | wofi --dmenu --prompt "Changing skins huh ?..." --conf ~/.config/wofi/config --style ~/.config/wofi/style.css)

    if [[ -n "$SELECTION" ]]; then
        awww img "$DIR/$SELECTION" --transition-type random
        sed -i "s|path = .*|path = $DIR/$SELECTION|g" ~/.config/hypr/hyprlock.conf
        notify-send "Bruh" "Wallpaper updated."
    fi
fi