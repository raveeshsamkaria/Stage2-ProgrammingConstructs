#!/bin/bash -x
a=$(( RANDOM %1000 ))
b=$(( RANDOM %1000 ))
c=$(( RANDOM %1000 ))
d=$(( RANDOM %1000 ))
e=$(( RANDOM %1000 ))
echo "5 Random Numbers = " $a $b $c $d $e 
num=" $a $b $c $d $e "
max=0
for n in $num
do
	if [ $n -gt $max ]
	then
		max=$n
	else
		max=$max
	fi
done
min=`echo $num | awk '{print $1}'`
for m in $num
do
	if [ $m -lt $min ]
	then
		min=$m
	else
		min=$min
	fi
done
echo "The maximum number is $max"
echo "The minimum number is $min"
