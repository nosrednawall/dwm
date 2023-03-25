#!/usr/bin/env bash

compton &
nitrogen --restore &
dwmblocks &
xrandr --output HDMI-1 --mode 2560x1080 --output eDP-1 --mode 1366x768 --left-of HDMI-1
copyq &
