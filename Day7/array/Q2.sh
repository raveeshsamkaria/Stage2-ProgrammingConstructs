#!/bin/bash -x
arr=()
for a in $(seq 10)
do
	randomNum=$(( RANDOM % 900 + 100 ))
	arr[$a]=$randomNum
done
echo ${arr[@]}
secondLargest=$(printf '%s\n' "${arr[@]}" | sort -n | tail -2 | head -1)
secondSmallest=$(printf '%s\n' "${arr[@]}" | sort -n | head -2 | tail -1)
echo "Second Largest : "$secondLargest
echo "Second Smallest : "$secondSmallest
