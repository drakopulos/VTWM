#!/bin/sh

synclient TouchpadOff=1
xset s 1800
xset dpms 0 2400 3600
xset r rate 235 45 &
xset fp+ /usr/share/fonts/ext/
xset fp rehash
xrdb ~/.Xresources
xsetroot -cursor_name left_ptr
#xclock -digital -strftime %l":"%M" "%P -geometry 100x35+30+20 -name clock -title clock &
x-terminal-emulator -g 35x8+4+4 -name clock -title clock -e tty-clock -t -C3 &
sleep 2
x-terminal-emulator -g 34x18-7-3 -name alsa -title "alsa" -e alsamixer &
x-terminal-emulator -g 100x30+200+130 -name term -title "term" &
x-terminal-emulator -g 75x40+$(($WIDTH + 200))+133 -name file -title "file" -e ranger &
x-terminal-emulator -g 75x40+$(($WIDTH + 700))+133 -name proc -title "proc" -e htop &
exec vtwm -m -f "$HOME/.config/vtwm/vtwm-env"
