#!/bin/bash
dir=/home/avi/remindme/talker/sender
INTERVAL=60
export PATH=$dir:$PATH
var="One minute reminder $1"
echo $var | /usr/bin/logger -t REMINDER 
tm=$(echo $1 | awk '{ print $1 }')
ptm=$(date -d $tm "+%s")
now=$(date "+%s")
timediff=$((now - ptm))
if [ "$timediff" -gt  $INTERVAL ]; then 
	echo "SO BIG"
	remindme.sh "$var"
fi



