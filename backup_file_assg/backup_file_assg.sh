#!/bin/bash

#for file_entry in *
#do
#	echo "$file_entry"
#done

b=$0
dir_name="backup"
if [ -d $dir_name ]
then
	echo "Skipping directory creation (already exists)"
else
	echo "Creating directory: backup/"
	mkdir $dir_name
fi

for file_entry in *	#iterate over all files in PWD
do
	if [ $file_entry == $b ]
	then
		#don't create a backup file for this file
		echo "Skipping: $file_entry"
	elif [ -d $file_entry ]
	then
		echo "Skipping (is directory): $file_entry"
	elif [ ! -s $file_entry ]
	then 
		echo "Skipping (zero file size): $file_entry"
	else
		prefix="backup_"
		extn=".bkp"
		#first check if backup file already exists
		if [ -e ./backup/$prefix$file_entry$extn ]
		then
			echo "Skipping (backup already exists): $file_entry"
		else
			echo "Creating backup file for: $file_entry"
			touch ./backup/$prefix$file_entry$extn
		fi
	fi
	
done
if find ./backup -mindepth 1 -print -quit 2>/dev/null | grep -q .;
then 
	echo "Stopping."
else
	echo "Removing directory (empty): $dir_name"
	rm -r $dir_name
fi
