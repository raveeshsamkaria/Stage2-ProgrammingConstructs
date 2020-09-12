#!/bin/bash
heads=0
tails=0
while ( true )
do
	a=`echo $(($RANDOM %2))`
	if [ $a -eq 0 ]
	then
		echo "Heads"
		heads=$(( $heads + 1 ))
		if [ $heads -eq 11 ]
		then
			break
		fi
	else
		echo "Tails"
		tails=$(( $tails + 1 ))
		if [ $tails -eq 11 ]
		then
			break
		fi
	fi
done
echo "Heads = $heads"
echo "Tails = $tails"
