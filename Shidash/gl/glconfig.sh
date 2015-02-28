#!/bin/bash

# Because I can't use non-tiling window managers well anymore...
sudo apt-get autoremove --purge gnome*
sudo aptitude install xmonad xmobar dmenu trayer xscreensaver libghc-xmonad-contrib-dev xfce4-power-manager network-manager-gnome evince xfce4-terminal gparted
sudo aptitude install gnumeric
gem install tzinfo

# Transfer config files
cp -r /home/gh/Config-File-Cache/Shidash/utilities /home/gh
cd /home/gh/Config-File-Cache/Shidash/dotfiles
cp -r .xmonad .xscreensaver .gitconfig .emacs .config /home/gh
cd /home/gh/Config-File-Cache/Shidash/gl
cp .xinitrc .xmobarrc /home/gh

cd /home/gh

