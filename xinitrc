setxkbmap br abnt2

# Loading fornts for xorg
xset +fp ~/.fonts/tamzen-font/bdf
xset fp rehash

# Fonts and colors for xterm
xrdb .Xresources

xrandr --output VGA1 --auto --output HDMI1 --auto --right-of VGA1

exec i3
