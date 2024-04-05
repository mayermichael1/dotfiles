#!/bin/bash
hostname=$(uname -n)
username=$(whoami)

systempath=/run/media/$username/BackupDisk01/$hostname
userpath=$systempath/$username


beginnTime=$(date +%s)


notify-send "Backup Starting..." "Backup to Disk has started"
pacman -Qe > $systempath/packages.txt
mkdir -p $userpath
rsync -a --delete /home/$username/ $userpath/

endTime=$(date +%s)

rsyncresult=$?

elapsedTime=$(($endTime-$beginnTime))
formatedTime=$(date -d@$elapsedTime -u +%H:%M:%S)

if [[ rsyncresult -eq 0 ]]; then
    notify-send "Backup Completed" "Backup completed successfully after: $formatedTime"
else
    notify-send "Backup Completed" "Backup completed with error: $rsyncresult" -u critical
fi

