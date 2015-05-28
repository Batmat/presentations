#!/bin/bash

count=1
oldcmd=""

history| grep git|grep -v history| tr -s ' '| cut -d' ' -f3,4,5,6,7 | sort | while read i 
do 
	newcmd=$i
	#echo $newcmd
	if [[ "$newcmd" == "$oldcmd" ]]; then
		count=$(( $count + 1 ))
	else
		echo "$count $oldcmd"
		count=1
	fi
	oldcmd=$newcmd
done 
