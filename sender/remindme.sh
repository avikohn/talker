#!/bin/bash
source config
echo $1

if [ ! -d $sayingdir ]; then
	mkdir $sayingdir
fi

timestamp=$(date +%s)
t=` echo $1 | /usr/bin/md5sum  | awk '{ print $1 }' `
fname="${t}_$(date +%F).txt"
fname=$sayingdir/$fname
if [ ! -f $fname ]; then
	echo $fname $1
	#echo "Current time is $(date +'%I:%M') " > $fname
	echo $1 >>  $fname
	scp  $fname $HOST:~/talk/sayings/
	cat /dev/null > $fname
else
	echo "File exists already $fname " 

fi
