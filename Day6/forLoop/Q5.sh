#!/bin/bash -x
read -p "Enter any number : " n
q=1
for (( m=$n; m>0; m-- ))
do
	q=$(( $q * $m ))
done
echo "Factorial : "$q
