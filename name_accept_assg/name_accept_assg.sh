#!/bin/bash

#-------------------------------------------------------------------
# Accept first name, middle name and last name from user. 
# Display in following format: 
# <last_name> <first_name> <middle_name>
#-------------------------------------------------------------------

echo "Enter first name"
read first_name
echo "Enter middle name"
read middle_name
echo "Enter last name"
read last_name

echo $last_name $middle_name $first_name
