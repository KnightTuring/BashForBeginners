#!/usr/bin/bash

echo "---------Array tryouts---------"
echo "> Style 1:"
array1[0]=zero
array1[1]=1
echo ${array1[@]}

echo "> Style 2:"
array2=( one two three )
echo ${array2[0]}
echo ${array2[2]}
echo ${array2[@]}

echo "> Style 3:"
array3=( [9]=nine [11]=11 )
echo ${array3[9]}
echo ${array3[11]}
echo ${array3[@]}

echo "> Style 4:"
#below line is not needed since -a is used in read
#declare -a array4
echo "Enter array elements (single space seperated):"
read -a array4
for i in "${array4[@]}"
do
	echo -ne $i" "
done
echo

echo "Stopping."
