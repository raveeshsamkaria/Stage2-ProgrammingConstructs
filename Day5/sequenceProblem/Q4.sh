#!/bin/bash -x
sum=0
for ((i=1; i<=5; i++))
do
	a=$((RANDOM%100))
	sum=$(($sum+$a))
done
avg=$(($sum/5))
echo "Sum : "$sum
echo "Average : "$avg
