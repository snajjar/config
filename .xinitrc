setxkbmap fr
xrdb -merge ~/.Xresources

# activer Vbox client
VBoxClient-all &

#xrandr -s 2560x1600
xrandr --output DVI-I-1 -s 1920x1080 -r 60 --output DVI-I-2 -s 1920x1080

# start awesome
exec awesome

# set default cursor
xsetroot -cursor_name left_ptr
