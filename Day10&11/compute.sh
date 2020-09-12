#!/bin/bash
echo ">---< Airthmetic Computation & Sorting >---<"

read -p "Enter the first value : " a
read -p "Enter the second value : " b
read -p "Enter the third value : " c
w=$(( a + b * c ))
echo "$a + $b * $c = $w"
x=$(( a * b + c ))
echo "$a * $b + $c = $x"
y=`awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b' )}'`
echo "$c + $a / $b = $y"
z=$(( $a % $b + $c ))
echo "$a % $b + $c = $z"
declare -A dict
dict[first]=$w
dict[second]=$x
dict[third]=`awk 'BEGIN{printf("%.0f", '$y' )}'`
dict[fourth]=$z
echo -e "Keys : ${!dict[@]}\nValues : ${dict[@]}"
m=0
for val in ${dict[@]}
do
	arr[$m]=$val
	m=$(( $m + 1 ))
done
echo "Array : ${arr[@]}"
temp=${#arr[@]}
for (( i=0; i<$temp; i++ ))
do
	for (( j=$(( $i + 1 )); j<=$temp; j++ ))
	do
		if [[ ${arr[$i]} -gt ${arr[$j]} ]]
		then
			continue
		else
			temp2=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp2
		fi
	done
done
echo "Array sorted in Descending order : ${arr[@]}"
for (( i=0; i<$temp; i++ ))
do
        for (( j=$(( $i + 1 )); j<=$temp; j++ ))
        do
                if [[ ${arr[$i]} -lt ${arr[$j]} ]]
                then
                        continue
                else
                        temp2=${arr[$i]}
                        arr[$i]=${arr[$j]}
                        arr[$j]=$temp2
                fi
        done
done
echo "Array sorted in Ascending order : ${arr[@]}"
