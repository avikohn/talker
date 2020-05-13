#!/bin/bash
#/usr/local/bin/gcalcli --calendar=House  remind 1  '/home/avi/remindme/talker/sender/remindme.sh %s'
cd "$(dirname "${BASH_SOURCE[0]}")"
echo "Current Dir $(pwd)"
source config
/usr/local/bin/gcalcli --calendar=House  remind 5  'remindme5.sh %s'
/usr/local/bin/gcalcli --calendar=House  remind 1  'remindme1.sh %s'



