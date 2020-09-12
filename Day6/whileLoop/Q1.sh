#!/bin/bash -x
read -p "Enter any number : " n
m=1
while (( m<=$n ))
do
	q=$(( 2**$m ))
	if [ $q -le 256 ]
	then
		echo "2 power $m is $q"
		m=$(( $m + 1 ))
		continue
	else
		echo "Value more than 256"
		break
	fi
done

