#! /bin/bash





for file
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