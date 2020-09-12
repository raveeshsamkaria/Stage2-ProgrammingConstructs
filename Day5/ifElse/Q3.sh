#!/bin/bash -x
read -p "Enter Year : " year
if [ $(( $year % 400 )) -eq 0 ]
then
	echo "$year is Leap Year"
elif [[ $(( $year % 100 )) -eq 0 ]]
then
	echo "$year is not Leap Year"
elif [ $(( $year % 4 )) -eq 0 ]
then
	echo "$year is Leap Year"
else
	echo "$year is not Leap Year"
fi
