#!/usr/bin/env bash

# Fix cursor
xsetroot -cursor_name left_ptr

# Polkit agent
#/usr/lib/xfce-polkit/xfce-polkit &

# Enable power management
#xfce4-power-manager &

# Fix Java problems
wmname "LG3D"
export _JAVA_AWT_WM_NONREPARENTING=1

compton &
nitrogen --restore &
dwmblocks &
xrandr --output HDMI-1 --mode 2560x1080 --output eDP-1 --mode 1366x768 --left-of HDMI-1
copyq &

# Launch DWM
#while dwm; [ $? -ne 0  ]; do echo "start dwm"; done
