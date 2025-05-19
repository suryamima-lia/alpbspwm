#!/bin/sh

# Load Xresources
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# Set wallpaper (replace with your actual image)
feh --bg-scale ~/.config/wallpapers/03.png &

# Start compositor
picom &

# Notifications
dunst &

# Audio
pulseaudio --start &

# Bar
tint2 &

# Clipboard manager
clipmenud &

# Keybindings
sxhkd &

neofetch &

# Start window manager
exec bspwm
