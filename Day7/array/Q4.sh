#!/bin/bash -x
read -p "Enter the size of an array : " size
found=false;
for (( count=0; count<$size; count++ ))
do
	read -p "Enter the arr[$count] : " value
	arr[count]=$value
done
echo  "Array : [ ${arr[@]} ]"
for (( i=0; i<`expr $size-2`; i++ ))
do
	for (( j=`expr $i+1`; j<`expr $size-1`; j++ ))
	do
		for (( k=`expr $j+1`; k<$size; k++ ))
		do
			num1=${arr[i]}
			num2=${arr[j]}
			num3=${arr[k]}
			sum=`expr $num1 + $num2 + $num3`
			if [[ $sum==0 ]]
			then
				echo "$num1 : $num2 : $num3"
				found=true;
				echo "Triplets Exist"
			fi
		done
	done
done
if [ $found=="false" ]
then
        echo "Triplets Not Exist"
fi

