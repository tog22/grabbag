#!/bin/bash
# Works on Mac. Replace afplay with another player to make work elsewhere. If afplay malfunctions on Mac, install and use qtplay.

a=10

while [ $a -ge 10 ]
do
	sleep 60
	afplay ../media/alarm-gentle.mp3
done
