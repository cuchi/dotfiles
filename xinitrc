# american keyboard
setxkbmap us intl
# ...or brazilian keyboard
# setxkbmap br abnt2

# Loading fornts for xorg
xset +fp ~/.fonts/tamzen-font/bdf
xset fp rehash

# Fonts and colors for xterm
xrdb .Xresources

exec i3
