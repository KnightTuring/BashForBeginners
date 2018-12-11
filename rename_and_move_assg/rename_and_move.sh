#!/usr/bin/bash

# TODO:
# 1. Create file abc.txt
# 2. Create directory Test 
# 3. Rename file to ABC.txt
# 4. Move renamed file to Test directory

FILE_NAME=abc
RENAMED_FILE_NAME=ABC
DIR_NAME=Test
EXT=.txt
DELAY_SEC=2

echo "-> Creating file in current directory"
sleep $DELAY_SEC
touch $FILE_NAME$EXT
echo "-> Creating directory"
sleep $DELAY_SEC
mkdir $DIR_NAME
echo "-> Renaming $FILE_NAME to $RENAMED_FILE_NAME"
sleep $DELAY_SEC
mv $FILE_NAME$EXT $RENAMED_FILE_NAME$EXT
echo "-> Moving $RENAMED_FILE_NAME to $DIR_NAME directory"
sleep $DELAY_SEC
mv $RENAMED_FILE_NAME$EXT ./$DIR_NAME
echo "-> done."
sleep $DELAY_SEC



