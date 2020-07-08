#! /bin/bash

files="
/usr/sbin/accept
/usr/sbin
/usr/sbin/vigr
/usr/sbin/grapck
/home/zev/Desktop/Linux/4.bash
"

for file in $files
do
    if [ -f $file ]
    then
    echo "file: $file"; echo 
    elif [ -d $file ]
    then
    echo "dir :$file" ; echo
    fi
done

exit 0



echo