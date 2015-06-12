#!/bin/bash

# Must first make tails persistent vol, download tahoe config, clone config-file/cache
cp -r tahoebackup /live/persistence/TailsData_unlocked
sudo apt-get install tahoe-lafs
/home/amnesia/Config-File-Cache/Shidash/utilities/restoresetup.sh
/home/amnesia/Config-File-Cache/Shidash/setup.sh
