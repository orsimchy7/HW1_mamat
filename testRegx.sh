#!/bin/bash


#cat ./alerts.in | cut -d "}" -f 2


missles_category ='"category":1'
katbam_category ='"category":2'

search_var = "30\.11\.2024.*${missles_category}|${katbam_category}"

#cities=$(sed 's/}/}\n/g' alerts.in | grep -E "30\.11\.2024" | grep -E "${missles_category}|${katbam_category}" | cut -d ":" -f 2 | cut -d "," -f 1 | sed 's/"//g')
#echo $cities

#grep -E "29\.11\.24" ./alerts.in

sed 's/}/}\n/g' alerts.in | grep -E "${search_var}" | cut -d ":" -f 2 | cut -d "," -f 1 | sed 's/"//g'



#test combined cut
#sed 's/}/}\n/g' alerts.in | grep -E "${search_var}" | awk -F ":|," '{print $2}' | sed 's/"//g'


