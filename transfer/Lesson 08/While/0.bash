#! /bin/bash

read -p "Enter num: " num

i=0

while [ $i -le $num ]
do  
    chmod +x $i.bash & ((i++))
done