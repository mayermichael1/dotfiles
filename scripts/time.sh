#!/bin/bash
#
t1=$(date +%s)

$($1)

t2=$(date +%s)

elapsed=$((t2-t1))
formated=$(date -d@$elapsed -u +%H:%M:%S)

echo "Time elapsed: $formated"


