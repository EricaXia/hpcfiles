#!/bin/bash

# Read the file in parameter and fill the array named "array"
getArray() {
    array=() # Create array
    while IFS= read -r line # Read a line
    do
        array+=("$line") # Append line to the array
    done < "$1"
}

getArray "location_data_new.txt"

# set python vers 3.7.4
source /usr/usc/python/3.7.4/setup.sh

# download posts for location ids in array
count=1
for id in $array; do
	count=$(( $count + 1 ))
	if [ $(($count%4)) -eq 0 ]; then
	python3 /home/rcf-proj3/aa6/ericaxia/instaloader-4.3/instaloader.py --login="sunwisdom101@gmail.com" --password="EvOu7CR7Iq2V" --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2020, 3, 1) <= date_utc <= datetime(2020, 3, 27)" --count=5000 --request-timeout=300 $id	
	elif [ $(($count%6)) -eq 0 ]; then	
	python3 /home/rcf-proj3/aa6/ericaxia/instaloader-4.3/instaloader.py --login="musketeers1128@gmail.com" --password="EvOu7CR7Iq2V" --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2020, 3, 1) <= date_utc <= datetime(2020, 3, 27)" --count=5000 --request-timeout=300 $id	
	elif [ $(($count%3)) -eq 0 ]; then	
	python3 /home/rcf-proj3/aa6/ericaxia/instaloader-4.3/instaloader.py --login="jadeite.stream@gmail.com" --password="EvOu7CR7Iq2V" --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2020, 3, 1) <= date_utc <= datetime(2020, 3, 27)" --count=5000 --request-timeout=300 $id	
	elif [ $(($count%2)) -eq 0 ]; then	
	python3 /home/rcf-proj3/aa6/ericaxia/instaloader-4.3/instaloader.py --login="katkit1112@gmail.com" --password="EvOu7CR7Iq2V" --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2020, 3, 1) <= date_utc <= datetime(2020, 3, 27)" --count=5000 --request-timeout=300 $id	
	else
	python3 /home/rcf-proj3/aa6/ericaxia/instaloader-4.3/instaloader.py --login="cutebarfkitten@gmail.com" --password="EvOu7CR7Iq2V" --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2020, 3, 1) <= date_utc <= datetime(2020, 3, 27)" --count=5000 --request-timeout=300 $id
	fi
done
