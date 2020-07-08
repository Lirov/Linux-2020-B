
#! /bin/bash

for file in /home/zev/Desktop/Linux/*
do 
	if [ -f $file ]
	then
	echo "file: $file"; echo
	# elif - else if
	elif [ -d $file ]
	then
	echo "dir : $file"; echo
	fi
done

exit 0

# echo $?