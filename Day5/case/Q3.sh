#!/bin/bash -x
read -p "Enter any value less than Million : " n
case $n in
"1")
	echo "Ones"
;;
"10")
	echo "Ten"
;;
"100")
	echo "Hundred"
;;
"1000")
	echo "Thousand"
;;
"10000")
	echo "Ten Thousand"
;;
"100000")
	echo "Lakh"
;;
"1000000") 
	echo "Million"
;;
*)
	echo "Error!!! Enter less than or equal to Million";;
esac
