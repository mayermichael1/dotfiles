#!/bin/bash

uplink=$(ip a | grep "state UP" | awk -F: '{print $2}' | head -n 1) 
local_ip=$(ip a show ${uplink} | grep 'inet\s' | awk '{print $2}' | awk -F '/' '{print $1}')

user=$(whoami)
full_path=$(realpath $1)

command="scp ${user}@${local_ip}:${full_path} ."

wl-copy ${command}

echo ${command}
echo "copied to clipboard"
