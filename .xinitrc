setxkbmap fr
xrdb -merge ~/.Xresources

# activer Vbox client
VBoxClient-all &

# start awesome
xrandr -s 2048x1152
exec awesome

# set default cursor
xsetroot -cursor_name left_ptr

# set tap-to-click
(sleep 5; xinput set-prop "ETPS/2 Elantech Touchpad" "libinput Tapping Enabled" 1) &

# set key bindings
xbindkeys
