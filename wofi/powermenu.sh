#!/bin/bash

# Define the options
entries="󰐥 Shutdown\n󰜉 Reboot\n󰤄 Suspend\n󰗽 Logout\n󰷛 Lock"

# Launch Wofi in dmenu mode
selected=$(echo -e "$entries" | wofi --dmenu --conf ~/.config/wofi/config --style ~/.config/wofi/style.css --prompt "System Operations...")

# Execute based on selection
case $selected in
  *Shutdown)
    systemctl poweroff ;;
  *Reboot)
    systemctl reboot ;;
  *Suspend)
    systemctl suspend ;;
  *Logout)
    hyprctl dispatch exit ;;
  *Lock)
    hyprlock ;;
esac