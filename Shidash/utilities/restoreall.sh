#!/bin/bash

# Plug in flash drive and mount on mnt first
cd /home/amnesia/Persistent/mnt

torify tahoe start

tahoe cp --recursive Keyfiles: Keyfiles
cp -r Keyfiles/Latest/* Keyfiles
rm -r Keyfiles/Archives Keyfiles/Latest

tahoe cp --recursive todo: todo
cp -r todo/Latest/* todo
rm -r todo/Archives todo/Latest

tahoe cp --recursive Learn: Learn
cp -r Learn/Latest/* Learn
rm -r Learn/Archives Learn/Latest

tahoe cp --recursive TailsData_unlocked: TailsData_unlocked
cp -r TailsData_unlocked/Latest/* TailsData_unlocked
rm -r TailsData_unlocked/Archives TailsData_unlocked/Latest

tahoe cp --recursive 2015: 2015
cp -r 2015/Latest/* 2015
rm -r 2015/Archives 2015/Latest

tahoe cp --recursive htf: htf
cp -r htf/Latest/* htf
rm -r htf/Archives htf/Latest
