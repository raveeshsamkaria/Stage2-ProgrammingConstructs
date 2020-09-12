#!/bin/bash -x
read -p "Enter the Number : " num
palindrome() {
	val=$1
	a=`echo $val | perl -ne 'chomp;print scalar reverse;'`
	if [ $val -eq $a ]
	then
		echo "The number $val is Palindrome"
	else
		echo "The number $val is not a Palindrome"
	fi
}
palindrome $num
