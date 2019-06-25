setxkbmap fr
xrdb -merge ~/.Xresources

# activer Vbox client
VBoxClient-all &

# start awesome
xrandr -s 2560x1600
exec awesome

# set default cursor
xsetroot -cursor_name left_ptr
