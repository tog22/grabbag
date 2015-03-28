#!/bin/bash
# Uses Mac commands, which you can replace.
#
# monitor-website-for-specific-change.sh <url> <thing to search for>

wget -q --spider $1 || echo "URL not found"
while [ true ]
do
        if wget -q -O- $1 | grep $2 >/dev/null
        then
                echo "******GO GO GO!!******"
                say "Go! Go! Go!"
                afplay ../media/alarm-startling.mp3
        fi
        sleep 6
done
