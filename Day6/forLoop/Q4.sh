#!/bin/bash
read -p "Enter the first value : " a
read -p "Enter the last value : " b
primenum=1
for (( j=$a; j<=$b; j++ ))
do
	c=$(( $j - ($j - 2) ))
	primenum=1
	for (( m=$c; m<=$j-1; m++ ))
	do
		q=$(( $j % $m ))
		if [ $q -eq '0' ]
		then
			primenum=0
		else
			continue
		fi
	done
	if [ $primenum -ne 0 ]
	then
		echo -ne $j, 
	else
		continue
	fi
done
