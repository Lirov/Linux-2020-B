#! /bin/bash

read -p "Enter num: " num

i=0

while [ $i -le $num ]
do  
    cat 01_.bash > $i.bash & ((i++))
done