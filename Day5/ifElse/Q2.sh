#!/bin/bash -x
read -p "Enter Date : " a
b=$(( RANDOM %31 + 1 ))
read -p "Enter Month in number(1 to 12) : " month
day=$a
year=2020
if [[ $month -eq 2 && $day -gt 29 ]]
then
	echo " February consists of 28 days only and 29 days in leap year. Please enter the correct date."
else
	echo "Date:$day/$month/$year"
	if [[ $month -ge 3 && $month -le 6 ]]
	then
		if [[ $month -eq 3 && $day -ge 20 ]]
		then
			echo "TRUE"
		elif [[ $month -eq 6 && $day -le 20 ]]
		then
			echo "TRUE"
		elif [[ $month -gt 3 && $month -lt 6 ]]
		then
			echo "TRUE"
		else
			echo "FALSE"
		fi
	else
		echo "FALSE"
	fi
fi

