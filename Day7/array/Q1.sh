#!/bin/bash -x
count=0
for a in $(seq 10)
do
        randomNum=$(( RANDOM % 900 + 100 ))
        arr[((count++))]=$randomNum
done
echo ${arr[@]}
max=${arr[0]}
min=${arr[0]}
max2=${arr[0]}
min2=${arr[0]}
for i in "${arr[@]}"
do
    if [[ "$i" -gt "$max" ]]; then
        max2="$max"
	max="$i"
    fi
    if [[ "$i" -lt "$min" ]]; then
        min2="$min"
	min="$i"
    fi
done
echo "Array : "${arr[@]}
echo "2nd Largest Number : $max2"
echo "2nd Smallest Number : $min2"
