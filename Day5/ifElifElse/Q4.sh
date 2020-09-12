#!/bin/bash -x
read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c
w=`echo $(( $a + $b * $c ))`
x=`echo $(( $a % $b + $c ))`
y=`echo $(( $c + $a / $b ))`
z=`echo $(( $a * $b + $c ))`
num=" $w $x $y $z "
max=0
max=`echo $num | awk '{print $1}'`
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
echo "The maximum among $w, $x, $y, $z : $max"
echo "The minimum among $w, $x, $y, $z : $min"
