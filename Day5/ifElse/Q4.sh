#!/bin/bash -x
a=`echo $(( RANDOM %2 ))`
if [ $a == 0 ]
then
	echo "HEAD"
else
	echo "TAIL"
fi
