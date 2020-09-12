#!/bin/bash
function random() {
	randomNumber=$((1+RANDOM%6))
	echo $randomNumber
}
declare -A dice
a=0
b=0
c=0
d=0
e=0
f=0
ul=10
valid=true
while [ valid ]
do
	case $(random) in
	"1")
		if [ $a -eq $ul ]
		then
			max=$a
			break
		else
			a=$(($a+1))
			dice[1]=$a			
		fi
	;;
	"2")
		if [ $b -eq $ul ]
		then
			max=$b
			break
		else
			b=$(($b+1))
	        dice[2]=$b
		fi
	;;
	"3")
		if [ $c -eq $ul ]
		then
			max=$c
			break
		else
			c=$(($c+1))
			dice[3]=$c
		fi
	;;
	"4")
		if [ $d -eq $ul ]
		then
			max=$d
			break
		else
			d=$(($d+1))
			dice[4]=$d
		fi
	;;
	"5")
		if [ $e -eq $ul ]
		then
			max=$e
			break
		else
			e=$(($e+1))
			dice[5]=$e
		fi
	;;
	"6")
		if [ $f -eq $ul ]
		then
			max=$f
			break
		else
			f=$(($f+1))
			dice[6]=$f
		fi
	;;
	*)
		echo "Invalid Entry"
	esac
done
echo "Key	Values"
for (( i=1;i<=6;i++ ))
do
	echo "Dice[$i]	${dice[$i]}"
done
length=${#dice[@]}
minimum=${dice[1]}
for (( i=1; i<=$length; i++ ))
do
        temp=${dice[$i]}
        if [ $temp -eq 10 ]
        then
                echo "Maximum :- $i : ${dice[$i]}"
        fi
done
for (( i=1; i<=$length; i++ ))
do
        temp=${dice[$i]}
        if [ $minimum -gt $temp ]
        then
             minimum=$temp
        fi
done
for (( i=1;i<=$length;i++ ))
do
	temp=${dice[$i]}
	if [ $temp -eq $minimum ]
	then
		echo "Minimum :- $i : ${dice[$i]}"
	fi
done
