#!/bin/bash
dir=/home/avi/remindme/talker/sender
export PATH=$dir:$PATH
var="Five minute reminder $1"
echo $var | /usr/bin/logger -t REMINDER 
remindme.sh "$var"

