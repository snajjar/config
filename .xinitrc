setxkbmap fr
xrdb -merge ~/.Xresources

# activer Vbox client
VBoxClient-all &

xrandr -s 2560x1600

# startxfce4
exec awesome

# set default cursor
xsetroot -cursor_name left_ptr
