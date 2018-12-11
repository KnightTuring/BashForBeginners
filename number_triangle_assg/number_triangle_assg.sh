#!/usr/bin/bash

echo "Limit?"
read lim

cnt=0
cnt_nested=1
a=1
while [ $cnt -lt $lim ]
do
	a=1
	while [ $a -le $cnt_nested ]
	do
		echo -n -e $a" "
		a=`expr $a + 1`
	done 
	echo -e
	cnt_nested=`expr $cnt_nested + 1`
	cnt=`expr $cnt + 1`
done

