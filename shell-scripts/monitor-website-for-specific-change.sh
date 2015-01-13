#!/bin/bash
# Uses Mac commands, which you can replace.

a=10

while [ $a -ge 10 ]
do
	sleep 60
	# To grep the STDERR output instead, replace > with 2>
	wget http://www.example.com/ > result.html
	if [ $(grep -c "Text to watch for" result.html) -ne 0 ]
	then
		echo "******GO GO GO!!******"
		say "wake up! wake up! wake up! wake up!"
		afplay ../media/alarm-startling.mp3  
	fi
done
