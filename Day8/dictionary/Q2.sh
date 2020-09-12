#!/bin/bash
read -p "Enter the number of person : " num
declare -A month
a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0
i=0
j=0
k=0
l=0
for (( x=1;x<=$num;x++ ))
do
	randomNumber=$(( RANDOM % 12 + 1 ))
	echo $randomNumber
	case $randomNumber in
        "1")
	    a=$(($a+1))
            month[1]=$a
        ;;
        "2")
            b=$(($b+1))
            month[2]=$b
        ;;
        "3")
            c=$(($c+1))
            month[3]=$c
        ;;
        "4")
            d=$(($d+1))
            month[4]=$d
        ;;
        "5")
            e=$(($e+1))
            month[5]=$e
        ;;
        "6")
            f=$(($f+1))
            month[6]=$f
        ;;
	"7")
            g=$(($g+1))
            month[7]=$g
        ;;
	"8")
            h=$(($h+1))
            month[8]=$h
        ;;
	"9")
            i=$(($i+1))
            month[9]=$i
        ;;
	"10")
            j=$(($j+1))
            month[10]=$j
        ;;
	"11")
            k=$(($k+1))
            month[11]=$k
        ;;
	"12")
            l=$(($l+1))
            month[12]=$l
        ;;
        *)
                echo "Invalid Entry"
        esac
done
echo "Values  ${!month[@]} |	${month[@]}"
echo "Month	Count"
for (( i=1;i<=12;i++ ))
do
        echo "Month_[$i]  ${month[$i]}"
done
