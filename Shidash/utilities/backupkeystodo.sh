#!/bin/bash

sudo cp -r /live/persistence/TailsData_unlocked/gnupg /live/persistence/TailsData_unlocked/icedove /live/persistence/TailsData_unlocked/nm-system-connections /live/persistence/TailsData_unlocked/openssh-client /live/persistence/TailsData_unlocked/pidgin /live/persistence/TailsData_unlocked/tahoebackup /live/persistence/TailsData_unlocked/persistence.conf /home/amnesia/Persistent/mnt/Keyfiles
cp -r /home/amnesia/Persistent/keepass.kdb /home/amnesia/Persistent/software/go /home/amnesia/Persistent/.pond /home/amnesia/Persistent/mnt/Keyfiles  
rm -r /home/amensia/Persistent/mnt/todo
cp -r /home/amnesia/Persistent/todo /home/amnesia/Persistent/mnt/
rm -r /home/amnesia/Persistent/mnt/Learn
cp -r /home/amnesia/Persistent/Learn /home/amnesia/Persistent/mnt/
