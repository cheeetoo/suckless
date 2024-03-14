#!/bin/sh
picom &
redshift -O 3000 &
nm-applet &
exec xinput set-prop "MSFT0001:01 04F3:3140 Touchpad" "libinput Tapping Enabled" 1 &
exec xinput set-prop "MSFT0001:01 04F3:3140 Touchpad" "libinput Disable While Typing Enabled" 0 &
slstatus &
# exec dwm
exec dbus-run-session dwm
