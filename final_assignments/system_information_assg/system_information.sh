#!/bin/bash
echo -e "=======System Information=======\n"
echo -e "\n\e[31;43m----------Hostname----------\e[0m\n"
hostname
echo -e "\n\e[31;43m-------System disk usage-------\e[0m\n"
df
echo -e "\n\e[31;43m----------Memory-------------\e[0m\n"
echo "Free and used memory: "
free -h #-h is human-readable format
echo -e "\n\e[31;43m---System uptime and load---\e[0m\n"
uptime -p #-p for pretty formatting 
echo -e "\n\e[31;43m-----Logged in users-----\e[0m\n"
w
echo -e "\nStopping.\n"


