#!/bin/bash

# Must be mounted on mnt

mkdir /home/amnesia/Persistent/mnt
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
