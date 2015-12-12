#!/bin/sh

PATH=/bin:/usr/bin:/usr/local/bin
DISPLAY=:0
XAUTHORITY="$HOME/.Xauthority"

if [ ! "$(pgrep -x -u "$USER" slimlock)" ]
then
	slimlock
fi
