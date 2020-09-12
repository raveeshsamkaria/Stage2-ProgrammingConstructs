#!/bin/bash -x
read -p "Enter your lucky number between 1 to 100 : " number
valid=true
lb=1
ub=100
while [ valid ]
do
	mid=$(( $lb+$ub ))
	m=$(( $mid/2 ))
	if [ $number -eq $m ]
	then
		echo $m
		break
	elif [ $number -gt $m ]
	then
		lb=$(( $m+1 ))
	else
		ub=$(( $m-1 ))
	fi
done
