#!/bin/bash

# Must be mounted on mnt

torify tahoe start

tahoe backup -v /home/amnesia/Persistent/mnt/htf/ htf:
tahoe backup -v /home/amnesia/Persistent/mnt/Keyfiles/ Keyfiles:
tahoe backup -v /home/amnesia/Persistent/mnt/TailsData_unlocked/ TailsData_unlocked:
tahoe backup -v /home/amnesia/Persistent/mnt/todo/ todo:
tahoe backup -v /home/amnesia/Persistent/mnt/shidash/2015/ 2015:
tahoe backup -v /home/amnesia/Persistent/mnt/Learn/ Learn:
