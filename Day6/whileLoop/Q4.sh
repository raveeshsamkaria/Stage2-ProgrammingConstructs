#!/bin/bash
n=100
wins=0
losses=0
count=0
while [[ $n -gt 0 && $n -le 200 ]]
do
	a=`echo $(($RANDOM %2))`
	count=$(( $count + 1 ))
	if [ $a -eq 0 ]
	then
		wins=$(( $wins + 1 ))
		n=$(( $n + 1 ))
	else
		losses=$(( $losses + 1 ))
		n=$(( $n - 1 ))
	fi
done
echo "$wins Wins"
echo "$losses Losses"
echo "$count Bets"

