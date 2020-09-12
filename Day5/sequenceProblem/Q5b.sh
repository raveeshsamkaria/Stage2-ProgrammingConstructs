#!/bin/bash -x
f=3.28084
a=$(echo 60/$f | bc -l)
b=$(echo 40/$f | bc -l)
echo $a" meters x "$b" meters "

