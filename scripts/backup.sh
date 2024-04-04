#!/bin/bash
hostname=$(uname -n)
username=$(whoami)

systempath=/run/media/$username/BackupDisk01/$hostname
userpath=$systempath/$username

notify-send "Backup Starting..." "Backup to Disk has started"
pacman -Qe > $systempath/packages.txt
mkdir -p $userpath
rsync -a --delete /home/$username/ $userpath/

rsyncresult=$?

if [[ rsyncresult -eq 0 ]]; then
    notify-send "Backup Completed" "Backup completed successfully"
else
    notify-send "Backup Completed" "Backup completed with error: $rsyncresult" -u critical
fi

