#!/bin/bash


missles_category='"category":1'
katbam_category='"category":2'

#user input
path=$1;
date=$2;


# ========= PIPE for cleaning the data
#seperete rows after every }
#get only rows that matches the selected date
#get only the cities names (using cut, awk , sed)
#sort the cities, count cities and keep only uniqe names
#delete unwanted [ and  spaces
cat "$path" | sed 's/}/}\n/g' | grep -E "$date"| cut -d  ':' -f 2 | awk -F ',' '{ print $1 }' | sed 's/^"//; s/"$//' | sort | uniq -c | tail -n +2 | sed 's#      ##'


#original
#sed 's/}/}\n/g' alerts.in | grep -E "${search_var}"| cut -d  '"' -f 4 | sort | uniq -c | tail -n +2


