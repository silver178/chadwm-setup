#!/bin/sh

xrdb merge ~/.Xresources
# xrandr --output OUTPUTNAME --mode RESOLUTION --rate REFRESHRATE
xrandr --output HDMI-0 --mode 1920x1080 --rate 60
# Turns off sleep mode. Can be verified with xset q
xset s off -dpms &
# Basic exports
export BROWSER=firefox
export IMAGE_VIEWER=eog
export EDITOR=nvim
xbacklight -set 10 &
#feh --bg-fill ~/Pictures/wall/gruv.png &
# I hate policykeys so damn much
lxqt-policykit-agent &
~/.fehbg &
xset r rate 200 50 &
picom --backend glx --vsync &

dash ~/.config/chadwm/scripts/bar.sh &
while type chadwm >/dev/null; do chadwm && continue || break; done
