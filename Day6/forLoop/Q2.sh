#!/bin/bash -x
read -p "Enter the value of n : " n
read -p "Enter the value of a : " a
read -p "enter the value of d : " d
for (( m=0; m<=$n; m++ ))
do
	q=1
	j=$(( $d * $m ))
	aa=$(( $a + $j ))
	echo -ne "$q/$aa "
done

