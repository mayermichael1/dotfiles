#!/bin/bash

hostname=$(cat /etc/hostname)
dest=""
dest_user=""

if [[ "$hostname" == "ARCHDESK" ]];
then
    dest="192.168.178.3" 
    dest_user="michael" 
elif [[ "$hostname" == "Tuxi" ]];
then
    dest="192.168.178.2" 
    dest_user="michael" 
fi

rsync -a --no-o --no-g --delete --quiet -e ssh ~/Documents/University $dest_user@$dest:/home/$dest_user/Documents/
