#!/bin/bash
#/usr/local/bin/gcalcli --calendar=House  remind 1  '/home/avi/remindme/talker/sender/remindme.sh %s'
runpath=/home/avi/remindme/talker/sender
export PATH=$runpath:$PATH
/usr/local/bin/gcalcli --calendar=House  remind 5  'remindme5.sh %s'
/usr/local/bin/gcalcli --calendar=House  remind 1  'remindme1.sh %s'



