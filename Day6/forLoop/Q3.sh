#!/bin/bash -x
read -p "Enter any number : " n
primenum=1
for (( m=2; m<=$n-1; m++ ))
do
	q=$(( $n % $m ))
	if [ $q -eq '0' ]
	then
		primenum=0
	else
		continue
	fi
done
if [ $primenum -eq 0 ]
then
	echo "$n is not a Prime Number"
else
	echo "$n is Prime Number"
fi
