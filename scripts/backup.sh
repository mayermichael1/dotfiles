#!/bin/bash

# check personal wiki to automate this script

hostname=$(uname -n)
username=$(whoami)

disk=/run/media/$username/BackupDisk01
systempath=$disk/$hostname
userpath=$systempath/$username

exclude="--exclude .cache"
exclude="$exclude --exclude .dartServer"
exclude="$exclude --exclude .gradle"
exclude="$exclude --exclude .git-credentials"
exclude="$exclude --exclude .local"
exclude="$exclude --exclude .mozilla"
exclude="$exclude --exclude .pki"
exclude="$exclude --exclude .steam"
exclude="$exclude --exclude .steampid"
exclude="$exclude --exclude .steampath"
exclude="$exclude --exclude .z"

beginnTime=$(date +%s)

notify-send "Backup Starting..." "Backup to Disk has started"
pacman -Qe > $systempath/packages.txt
mkdir -p $userpath
echo "" > $systempath/progress.txt

rsync -a --delete $exclude /home/$username/ $userpath/ --progress > $systempath/progress.txt
sync

endTime=$(date +%s)

rsyncresult=$?

elapsedTime=$(($endTime-$beginnTime))
formatedTime=$(date -d@$elapsedTime -u +%H:%M:%S)

if [[ rsyncresult -eq 0 ]]; then
    notify-send "Backup Completed" "Backup completed successfully after: $formatedTime"
else
    notify-send "Backup Completed" "Backup completed with error: $rsyncresult" -u critical
fi

umount $disk -l
