#!/bin/bash 

cp -r /home/amnesia/Persistent/Config-File-Cache/Shidash/utilities /home/amnesia/Persistent/Config-File-Cache/Shidash/boot.sh /home/amnesia/Persistent # Move scripts to persistent
sudo cp -r /home/amnesia/Persistent/Config-File-Cache/Shidash/dotfiles /live/persistence/TailsData_unlocked # Transfer config files
sudo chown -R amnesia /live/persistence/TailsData_unlocked/dotfiles
mkdir /home/amnesia/Persistent/mnt # Make dir for mount flash drive
sudo /home/amnesia/Persistent/utilities/mount.sh # Transfer key files
sudo cp -r /home/amnesia/Persistent/mnt/Keyfiles/* /live/persistence/TailsData_unlocked
cp -r /home/amnesia/Persistent/mnt/Keyfiles/keepass.kdb /home/amnesia/Persistent/mnt/Keyfiles/.pond /home/amnesia/Persistent/
sudo rm -r /live/persistence/TailsData_unlocked/keepass.kdb /live/persistence/TailsData_unlocked/go /live/persistence/TailsData_unlocked/.pond
sudo chown -R amnesia /live/persistence/TailsData_unlocked/gnupg /live/persistence/TailsData_unlocked/icedove /live/persistence/TailsData_unlocked/openssh-client /live/persistence/TailsData_unlocked/pidgin /live/persistence/TailsData_unlocked/tahoebackup
cp -r /home/amnesia/Persistent/mnt/todo /home/amnesia/Persistent/todo # Move todo list
sudo /home/amnesia/Persistent/utilities/unmount.sh
sudo apt-get update
sudo apt-get install make libssl-dev # Dev env setup
echo 'rvm_path="$HOME/Persistent/.rvm"' >> ~/.rvmrc
torsocks \curl -sSL get.rvm.io | torsocks bash -s stable
source /home/amnesia/Persistent/.rvm/scripts/rvm
rvm autolibs disable
torsocks rvm install 2.1.3
rvm use 2.1.3
torsocks gem install tzinfo
torsocks gem install rails -v 4.1.7
cd /home/amnesia/Persistent 
mkdir software # Make software dir
cd software
cp -r /home/amnesia/Persistent/mnt/Keyfiles/go /home/amnesia/Persistent/software
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.2.zip
unzip /home/amnesia/Persistent/software/elasticsearch-1.5.2.zip
rm /home/amnesia/Persistent/software/elasticsearch-1.5.2.zip
/home/amnesia/Persistent/boot.sh # Run boot config script
rm /home/amnesia/.icedove
