#!/bin/bash


missles_category='"category":1'
katbam_category='"category":2'

#user input
path=$1;
date=$2;
<<<<<<< HEAD
=======


#serach for alerts in a chosen date from categories of "missles" or "katbam"
search_var="${date}.*${missles_category}|${katbam_category}";
>>>>>>> efcdf8130005be74f5e0e30b6ca9fc36a2f425b3


# ========= PIPE for cleaning the data
#seperete rows after every }
<<<<<<< HEAD
#get only rows that matches the selected date
#get only the cities names (using cut, awk , sed)
#sort the cities, count cities and keep only uniqe names
#delete unwanted [ and  spaces
cat "$path" | sed 's/}/}\n/g' | grep -E "$date"| cut -d  ':' -f 2 | awk -F ',' '{ print $1 }' | sed 's/^"//; s/"$//' | sort | uniq -c | tail -n +2 | sed 's#      ##'
=======
#get only rows that matches the search query
#get only the cities names
#sort the cities
wget --no-check-certificate -O "$path" | sed 's/}/}\n/g' "$path" | grep -E "${search_var}"| cut -d  '"' -f 4 | sort | uniq -c | tail -n +2
>>>>>>> efcdf8130005be74f5e0e30b6ca9fc36a2f425b3


#original
#sed 's/}/}\n/g' alerts.in | grep -E "${search_var}"| cut -d  '"' -f 4 | sort | uniq -c | tail -n +2


