cryptsetup luksOpen /dev/sdb1 TURNWEALTHY
mount /dev/mapper/TURNWEALTHY /home/amnesia/Persistent/mnt
chown -R amnesia /home/amnesia/Persistent/mnt
