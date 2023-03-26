#!/usr/bin/env bash

# Stop programs
_ps=(compton dunst nitrogen dwmblocks copyq nm-tray mate-power-manager)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done


# Fix cursor
xsetroot -cursor_name left_ptr

# Fix Java problems
wmname "LG3D"
export _JAVA_AWT_WM_NONREPARENTING=1

# resize display
xrandr --output HDMI-1 --mode 2560x1080 --output eDP-1 --mode 1366x768 --left-of HDMI-1

# start programs
compton &
nitrogen --restore &
dwmblocks &
copyq &
nm-tray &
mate-power-manager &
dunst &

# lock screen
xautolock -time 10 -locker slock &

# Launch DWM
#while dwm; [ $? -ne 0  ]; do echo "start dwm"; done
