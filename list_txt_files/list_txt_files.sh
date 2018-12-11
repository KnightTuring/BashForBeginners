#!/bin/bash
EXT=.txt
WHICH_PATH=~
echo "============================================="
echo "Listing all $EXT files under user's home directory ( $WHICH_PATH  )"
echo "============================================="
#echo "$WHICH_PATH/*$EXT" 
ls $WHICH_PATH/*$EXT
echo "============================================="
echo "Done."
echo "============================================="

