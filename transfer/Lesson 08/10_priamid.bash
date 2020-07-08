#! /bin/bash

echo
limit=5

for ((i=1 ; i <= 5 ; i++))
do # {
    for (( x=1 ; x <= i ; x++))
    do # {
        echo -n "* "
    done # }
    echo
done # }
