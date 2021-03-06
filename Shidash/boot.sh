#!/bin/bash 

source /home/amnesia/Persistent/.rvm/scripts/rvm
rvm use 2.1.3
gsettings set org.gnome.desktop.background primary-color '#000000'
gsettings set org.gnome.desktop.background picture-uri ''
sudo apt-get install vncviewer icedove iceowl-extension ghc6 xmonad xmobar dmenu trayer xfce4-terminal libghc-xmonad-contrib-dev xscreensaver emacs23-nox make libssl-dev tahoe-lafs nodejs build-essential golang-mode golang emacs-goodies-el hamster-applet
sudo apt-get -t wheezy-backports install git-annex
sudo sed -i "s/$outerface lo {/$outerface lo {\n\t\tdaddr 127.0.0.1 proto tcp syn dport 3000 {\n\t\t\tmod owner uid-owner amnesia ACCEPT;\n\t\t}\n\t\tdaddr 127.0.0.1 proto tcp syn dport 5900 {\n\t\t\tmod owner uid-owner amnesia ACCEPT;\n\t\t}\n\t\tdaddr 127.0.0.1 proto tcp syn dport 9200 {\n\t\t\tmod owner uid-owner amnesia ACCEPT;\n\t\t}\n\t\tdaddr 127.0.0.1 proto tcp syn dport 9300 {\n\t\t\tmod owner uid-owner amnesia ACCEPT;\n\t\t}\n\t\tdaddr 127.0.0.1 proto tcp syn dport 9001 {\n\t\t\tmod owner uid-owner amnesia ACCEPT;\n\t\t}\n/" /etc/ferm/ferm.conf
sudo service ferm restart
killall metacity nautilus gnome-shell gnome-panel
pkill -9 gnome-panel
setxkbmap -option compose:caps
xscreensaver &
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 20 --transparent true --tint 0x000000 --height 18 &
exec ck-launch-session xmonad
