#!/bin/bash

xrdb -merge .Xresources
xscreensaver &
xfce4-power-manager &
nm-applet &
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 0x000000 --height 18 &

exec xmonad
