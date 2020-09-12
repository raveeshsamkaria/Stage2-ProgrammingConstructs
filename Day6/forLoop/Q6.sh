#!/bin/bash -x
read -p "Enter any number : " n
for (( m=2; m<$n; m++ ))
do
	z=$(( $n % $m ))
	if [ $z -eq 0 ]
	then
		b=$m
		prime=1
		for (( j=2; j<$b-1; j++ ))
		do
			q=$(( $b % $j ))
			if [ $q -eq 0 ]
			then
				prime=0
			else
				continue
			fi
		done
	if [ $prime -eq 0 ]
	then
		continue
	else
		echo -ne "$b "
	fi
	else
		continue
	fi
done
