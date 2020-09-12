#!/bin/bash
echo ">---< Employee Wage Computation >---<"

declare -A dailyWage
declare -A totalWage
wagePerHour=20
fullWorkingHours=16
halfWorkingHours=8
fullDay=2
halfDay=1
totalWorkingHours=320
workingDayInMonth=20
day=1
presentHours=0

function workHours(){
	local isPresent=$1
	case $isPresent in
		$fullDay)
			echo $fullWorkingHours;;
		$halfDay)
			echo $halfWorkingHours;;
		*) echo 0;;
	esac
}

while [ $day -le $workingDayInMonth ] && [ $presentHours -lt $totalWorkingHours ]
do
	isPresent=$(( RANDOM % 3))
	dailyHours="$(workHours $isPresent)"
	dailyWage["Day $day"]=$(( $wagePerHour * $dailyHours ))
	presentHours=$(( $presentHours + $dailyHours ))
	totalWage["Day $day"]=$(( $presentHours * $wagePerHour ))
	((day++))
done

echo "-------------------------------------"
echo "Day	Daily Wages	Total Wages"
echo "-------------------------------------"
for((i=1;i<day;i++))
do
	echo "Day $i		${dailyWage[Day $i]}		${totalWage[Day $i]}"
done
