#!/bin/bash -x
echo -e "OPTIONS :\n1. Feet to inch\n2. Feet to Meter\n3. Inch to Feet\n4. Meter to Feet"
read -p "Enter the option : " n
case $n in
"1")
	read -p "Enter the feet : " feet
	i=`awk 'BEGIN{printf("%2f",'$feet' * 12)}'`
	echo "$i inch"
;;
"2")
	read -p "Enter the feet : " feet
	m=`awk 'BEGIN{printf("%2f",'$feet' * 0.3048)}'`
	echo "$m meters"
;;
"3")
	read -p "Enter the inch : " inch
	f=`awk 'BEGIN{printf("%2f",'$inch' / 12)}'`
	echo "$f feets";;
"4")
	read -p "Enter the meters : " meter
	f=`awk 'BEGIN{printf("%2f",'$meter' / 0.3048)}'`
	echo "$f feets"
;;
*)
	echo "Error!!! Enter valid option from 1 to 4 only";;
esac
