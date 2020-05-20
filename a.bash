#! /bin/bash

read -p "Enter",srt1
read -p "Enter",srt2

if [["$srt1" == "$srt2"]] ; then
	echo "Equal"
else 
	echo "not Equal"

[[ "$str1" == "$str2" ]] && echo "equal" || echo "not equal"