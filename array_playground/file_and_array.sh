#!/bin/bash

i=0
j=0
declare -a arr
for file in $(find *)
do
	arr[i]=$file
	i=$((i+1))
done
echo "Array contents are:"
for i in ${arr[@]}
do
	echo $i
done

echo "Trailing substring extraction"
star_trek=(Kirk, Spock, Uhura, Scotty, Klingons, Vulcans)

echo ": 0"
echo ${star_trek[*]:0}

echo ": 3"
echo ${star_trek[*]:3}

echo ":2:4"
echo ${star_trek[*]:2:4}
