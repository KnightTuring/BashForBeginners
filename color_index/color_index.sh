#!/bin/bash

declare -a color_arr
#echo "Enter colors (space seperated):"
#read color_arr

#echo "Contents of array are:" 
#echo ${color_arr[@]}

echo "1. Enter colors"
echo "2. Delete from array"
read ch
case "$ch" in
	1) 
		choice=1
		while [ choice != 0 ]
		do

			echo "Which index to add new color?"
			read index

			echo "Which color?"
			read color
			echo "Setting value $color at index $index"
			color_arr[$index]=$color
			echo "Array is ${color_arr[@]}"
			echo "Enter 1 to continue, 0 to exit"
			read choice
		done
	2)
		echo "Array is ${color_arr[@]}"
		echo "Which color to delete?"
		read to_delete
		itr=0
		for i in ${color_arr[@]}
		do
			if [ $i==$to_delete ]
			then
				unset color_arr[$itr]
				break
			fi
			itr=`expr $itr+1`

		done
		echo "Deletion sucessful, modified array is: ${color_arr[@]}"
esac
echo "Exited."
