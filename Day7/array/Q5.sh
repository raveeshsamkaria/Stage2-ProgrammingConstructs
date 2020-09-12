#!/bin/bash -x
arr=()
for a in $(seq 100)
do
	echo $a
	b=$((a%11))
	if [ $b -eq 0 ]
	then
		arr[$a]=$a
	fi
done
echo ${arr[@]}
