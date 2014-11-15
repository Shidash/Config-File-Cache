#!/bin/bash 

cp -r /home/amnesia/Persistent/Config-File-Cache/Shidash/utilities /home/amnesia/Persistent/Config-File-Cache/backup /home/amnesia/Persistent/Config-File-Cache/boot.sh /home/amnesia/Persistent # Move scripts to persistent
sudo cp -r /home/amnesia/Persistent/Config-File-Cache/Shidash/dotfiles /live/persistence/TailsData_unlocked # Transfer config files
sudo chown -R amnesia /live/persistence/TailsData_unlocked/dotfiles
sudo /home/amnesia/Persistent/utilities/mount.sh # Transfer key files
sudo cp -r /home/amnesia/Persistent/mnt/Keyfiles/* /live/persistence/TailsData_unlocked
sudo chown -R amnesia /live/persistence/TailsData_unlocked/gnupg /live/persistence/TailsData_unlocked/icedove /live/persistence/TailsData_unlocked/openssh-client /live/persistence/TailsData_unlocked/pidgin
sudo /home/amnesia/Persistent/Utilities/unmount.sh
sudo apt-get install make libssl-dev # Dev env setup
echo 'rvm_path="$HOME/Persistent/.rvm"' >> ~/.rvmrc
\curl -sSL get.rvm.io | bash -s stable
source /home/amnesia/Persistent/.rvm/scripts/rvm
rvm autolibs disable
rvm install 2.1.3
rvm use 2.1.3
gem install tzinfo
gem install rails -v 4.1.7
gem install nokogiri
curl -L -O https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.4.zip
unzip elasticsearch-1.3.4.zip
mkdir /home/amnesia/Persistent/mnt # Make dir for mount flash drive
/home/amnesia/Persistent/boot.sh # Run boot config script
