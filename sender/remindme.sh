#!/bin/bash
timestamp=$(date +%s)
fname="saying_$timestamp.txt"
HOST=yapper
echo $fname
echo $1 "Current time is $(date +'%H:%M') Reminder for " > fname
echo $1 >>  $fname
echo $1
#scp  $fname pi@$HOST:~/talk/sayings/
scp  $fname $HOST:~/talk/sayings/
