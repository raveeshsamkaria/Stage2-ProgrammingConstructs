#!/bin/bash -x
read -p "Enter any number : " n
if [[ $n -ge 1 && $n -lt 10 ]]
then
	echo "Ones"
elif [[ $n -ge 10 && $n -lt 100 ]]
then
	echo "Ten"
elif [[ $n -ge 100 && $n -lt 1000 ]]
then
	echo "Hundred"
elif [[ $n -ge 1000 && $n -lt 10000 ]]
then
	echo "Thousand"
elif [[ $n -ge 10000 && $n -lt 100000 ]]
then
	echo "Ten Thousand"
elif [[ $n -ge 100000 && $n -lt 1000000 ]]
then
	echo "Lakhs"
elif [[ $n -ge 1000000 && $n -lt 10000000 ]]
then
	echo "Million"
else
	echo "Enter the number between 1 to Million"
fi

