#!/bin/env bash

# Options for powermenu
#lock=" Lock"
logout="󰗼 Logout"
shutdown=" Shutdown"
reboot="󰁯 Reboot"
sleep=" Sleep"

# Get answer from user via rofi
selected_option=$(echo "$logout
$sleep
$reboot
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
                  -config "~/.config/rofi/powermenu.rasi"\
                  -font "Hurmit Nerd Font Mono Regular 10"\
                  -width "10"\
                  -lines 4\
                  -line-margin 1\
                  -line-padding 1\
                  -scrollbar-width "0" )

# Do something based on selected option
#if [ "$selected_option" == "$lock" ]
#then
#    /home/$USER/.config/bspwm/scripts/i3lock-fancy/i3lock-fancy.sh
if [ "$selected_option" == "$logout" ]
then
    bspc quit
elif [ "$selected_option" == "$shutdown" ]
then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    amixer set Master mute
    systemctl suspend
else
    echo "No match"
fi
