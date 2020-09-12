#!/bin/bash
read -p "Enter any number : " n
count=0
funprime() {
	a=$(( $1 - ($1 -2) ))
	primenum=1
	for (( m=$a; m<=$1-1; m++ ))
	do
		q=$(( $1 % $m ))
		if [ $q -eq '0' ]
		then
			primenum=0
		else
			continue
		fi
	done
	if [ $primenum -eq 0 ]
	then
		echo "$1 is not a Prime Number"
	else
		count=1
		echo "$1 is Prime Number"
	fi
}
funprime $n
val=`echo $n | perl -ne 'chomp; print scalar reverse;'`
if [[ $count -eq 1 && $n -eq $val ]]
then
	echo "$val is Palindrome"
	funprime $val
else
	exit
fi

