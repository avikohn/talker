#!/bin/bash
dir=/home/avi/remindme/talker/sender
INTERVAL=60

export PATH=$dir:$PATH
var="One minute reminder $1"
echo $var | /usr/bin/logger -t REMINDER 
tm=$(echo $1 | awk '{ print $1 }')
ptm=$(date -d $tm "+%s")
now=$(date "+%s")
timediff=$((ptm - now))
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



