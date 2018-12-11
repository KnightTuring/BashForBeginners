#!/usr/bin/bash

#Stores all filenames of files in PWD 
#in an array.
#Then, store all .txt files in another directory

i=0
j=0
declare -a arr
declare -a txt_arr
ls_res=`ls`
for entry in $ls_res
do
	#check if it is .txt file
	if [ $entry=="*.txt" ]
	then
		echo "> Found .txt file"
		txt_arr[j]=$entry
		j=`expr $j+1`
	else
		arr[i]=$entry
		i=`expr $i+1`
	fi
done

echo "Array contents are: "
echo ${arr[@]}

echo "txt array contents are: "
echo ${txt_arr[@]}
