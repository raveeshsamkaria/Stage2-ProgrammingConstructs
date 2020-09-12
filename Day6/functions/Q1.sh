#!/bin/bash -x
ftoc() {
	b=`awk 'BEGIN{printf("%0.2f", '$1' - '32')}'`
	degf1=`awk 'BEGIN{printf("%0.2f", '$b' / '1.8')}'`
	echo "$degf1 celsius"
}
ctof() {
	a=`awk 'BEGIN{printf("%0.2f", '$1' * '1.8')}'`
	degc1=`awk 'BEGIN{printf("%0.2f", '$a' + '32')}'`
	echo "$degc1 fahrenheit"
}
echo -e "OPTION :\n1. Fahrenheit to Celsius\n2. Celsius to Fahrenheit"
read -p "Enter the option : " val
case $val in
"1")
	read -p "Enter the value in Fahrenheit : " degc
	k=`awk 'BEGIN{printf("%0.0f", '$degc' + '0')}'`
	l=`awk 'BEGIN{printf("%0.2f", '$degc' + '0')}'`
	if [[ $k -ge 32 && $k -le 212 ]]
	then
		ftoc $l
	else
		echo "Enter the value from 32 to 212 only"
	fi
;;
"2")
	read -p "Enter the value in Celsius : " degf
	s=`awk 'BEGIN{printf("%0.0f", '$degf' + '0')}'`
	t=`awk 'BEGIN{printf("%0.2f", '$degf' + '0')}'`
	if [[ $s -ge 0 && $s -le 100 ]]
	then
		ctof $t
	else
		echo "Enter the value from 0 to 100 celsius only"
	fi
;;
*)
	echo "Error!!! Enter valid input."
;;
esac
