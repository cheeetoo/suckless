#!/bin/sh
picom &
redshift -O 3000 &
nm-applet &
slstatus &

feh --bg-max ~/Pictures/cah.webp

xinput set-prop "MSFT0001:01 04F3:3140 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "MSFT0001:01 04F3:3140 Touchpad" "libinput Disable While Typing Enabled" 0

xrandr | grep "HDMI-1 connected" &> /dev/null
if [ $? -eq 0 ]; then
    xrandr --output HDMI-1 --auto --above eDP-1 --output eDP-1 --auto
else
    xrandr --output eDP-1 --auto
fi

exec dbus-run-session dwm

