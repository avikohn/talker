#!/bin/bash
cd /home/pi/talk
#pulseaudio --system

pth=tmp
if [ ! -d $pth ]; then
mkdir $pth 
else
rm -rf $pth
mkdir $pth
fi

chmod -R 777 $pth
for f in sayings/*.txt
do
if test -f "$f"; then
	/usr/local/bin/gtts-cli -f $f -o $pth/next.mp3
	ffmpeg -i $pth/next.mp3 -ac 2 $pth/next_s.mp3
	sox chime_use.mp3 $pth/next_s.mp3 $pth/final.mp3 channels 
	play -v 1.5 $pth/final.mp3
	echo "Saying $f"
	rm $f
else
	echo "No files to output"
fi
done



