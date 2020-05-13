#!/bin/bash
cd /home/pi/talk
./connectblue
rm ./next.mp3
echo $1 > txt.txt
/usr/local/bin/gtts-cli -f ./txt.txt -o ./next.mp3
#play -v 1.5 final_MP3WRAP.mp3
rm final.mp3
ffmpeg -i next.mp3 -ac 2 next_s.mp3
sox chime_use.mp3 next_s.mp3 final.mp3
play -v 1.5 final.mp3
