#!/bin/bash


#user input
path=$1;
date=$2;


# ========= PIPE for cleaning the data
#seperete rows after every }
#get only rows that matches the selected date
#get only the cities names (using cut, awk , sed)
#sort the cities, count cities and keep only uniqe names
#delete unwanted [ and  spaces
cat "$path" | sed 's/}/}\n/g' | grep -E "$date"| cut -d  ':' -f 2 | awk -F ',' '{ print $1 }' | sed 's/^"//; s/"$//' | sort | uniq -c | sed 's#      ##'


