#! /bin/bash

echo
limit=10

for ((a=1, b=1; a<= limit ; a++, b++))
do 
    echo -n " $(($a*$b))"
done

echo
echo