#!/bin/bash
echo ">---< Flip Coin Simulation >---<"
head=0
tail=0
for (( i=1; i<=42; i++ ))
do
	a=`echo $(($RANDOM%2))`
	if [ $a -eq 0 ]
	then
		head=$(( $head + 1 ))
	else
		tail=$(( $tail + 1 ))
	fi
	if [[ $head -eq 21 || $tail -eq 21 ]]
	then
		c=$(( $head - $tail ))
		b=$(( $tail - $head ))
		if [[ $c -ge 2 || $b -ge 2 ]]
		then
			break
		else
			a=`echo $(($RANDOM%2))`
			if [[ $a -eq 0 ]]
		        then
                		head=$(( $head + 1 ))
        		else
                		tail=$(( $tail + 1 ))
        		fi
			if [[ $head -eq $tail ]]
			then
				tie=0
				echo -e "Tie\nHead=$head\nTail=$tail"
				while [ $tie -eq 0 ]
				do
					a=`echo $(($RANDOM%2))`
				        if [ $a -eq 0 ]
        				then
                				head=$(( $head + 1 ))
        				else
                				tail=$(( $tail + 1 ))
        				fi
					c=$(( $head - $tail ))
					b=$(( $tail - $head ))
					if [[ $c -ge 2 || $b -ge 2 ]]
					then
						tie=1
					else
						tie=0
					fi
				done
				break
			elif [[ $head > $tail ]]
			then
				head=$(( $head - 1 ))
				break
			else
				tail=$(( $tail - 1 ))
				break
			fi
		fi
	fi
done
if [[ $head -gt $tail ]]
then
	echo -e "Head:$head\nTail:$tail\nHead won by $c times"
else
	echo -e "Head:$head\nTail:$tail\nTail won by $b times"
fi

