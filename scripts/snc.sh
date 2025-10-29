#!/bin/bash

OFS="$IFS"
IFS=$'\n'
stat --printf="%y %n\n" $(ls -tr $(find . -type f))
IFS="$OFS"

