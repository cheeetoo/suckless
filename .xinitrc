#!/bin/sh
picom &
redshift -O 3000 &
nm-applet &
slstatus &

xinput set-prop "MSFT0001:01 04F3:3140 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "MSFT0001:01 04F3:3140 Touchpad" "libinput Disable While Typing Enabled" 0

exec dbus-run-session dwm

