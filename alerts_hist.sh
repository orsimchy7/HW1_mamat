#!/bin/bash


missles_category='"category":1'
katbam_category='"category":2'

#user input
path=$1;
date=$2;


#serach for alerts in a chosen date from categories of "missles" or "katbam"
search_var="${date}.*${missles_category}|${katbam_category}";


# ========= PIPE for cleaning the data
#seperete rows after every }
#get only rows that matches the search query
#get only the cities names
#sort the cities
wget --no-check-certificate -O "$path" | sed 's/}/}\n/g' "$path" | grep -E "${search_var}"| cut -d  '"' -f 4 | sort | uniq -c | tail -n +2


#original
#sed 's/}/}\n/g' alerts.in | grep -E "${search_var}"| cut -d  '"' -f 4 | sort | uniq -c | tail -n +2


