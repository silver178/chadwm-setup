#!/bin/sh

xrdb merge ~/.Xresources
xrandr --output HDMI-0 --mode 1920x1080 --rate 60
export BROWSER=firefox
export IMAGE_VIEWER=eog
xbacklight -set 10 &
#feh --bg-fill ~/Pictures/wall/gruv.png &
~/.fehbg &
xset r rate 200 50 &
picom &

dash ~/.config/chadwm/scripts/bar.sh &
while type chadwm >/dev/null; do chadwm && continue || break; done
