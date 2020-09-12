#!/bin/bash -x
read -p "Enter any number : " n
for (( m=1; m<=$n; m++ ))
do
	q=$(( 2**$m ))
	echo "2 power $m is $q"
done

