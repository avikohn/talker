#!/bin/bash
dir=/home/avi/remindme/talker/sender
MINUTES=$2
INTERVAL=$((60*MINUTES))

export PATH=$dir:$PATH
var="$MINUTES minute reminder $1"
echo $var | /usr/bin/logger -t REMINDER 
tm=$(echo $1 | awk '{ print $1 }')
target_time=$(date -d $tm "+%s")
now=$(date "+%s")
timediff=$((target_time - now))
echo $timediff
if [ "$timediff" -gt 0 ]; then
	if [ "$timediff" -lt  $INTERVAL ]; then 
		remindme.sh "$var"
	else
		echo "TOO EARLY $timediff $var"
	fi
else
	echo "This passed already $timediff $var don't send it"
fi



