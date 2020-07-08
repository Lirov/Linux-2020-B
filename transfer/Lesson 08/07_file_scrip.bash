#! /bin/bash
i=1

for distor in `cat Liunxdis.txt`
do
    echo "$i : $distor"
    ((i++))
done

echo