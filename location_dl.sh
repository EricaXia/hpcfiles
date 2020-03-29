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

# download posts for location ids
count=0
for id in $array; do
	count=$(( $count + 1 ))
	if [ $(($count%2)) -eq 0 ]; then
	python3 /home/rcf-proj3/aa6/ericaxia/instaloader-4.3/instaloader.py --login="sunwisdom101@gmail.com" --password="EvOu7CR7Iq2V" --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2020, 3, 1) <= date_utc <= datetime(2020, 3, 26)" --count=10000 --request-timeout=300 $id	
	elif [ $(($count%3)) -eq 0 ]; then	
	python3 /home/rcf-proj3/aa6/ericaxia/instaloader-4.3/instaloader.py --login="musketeers1128@gmail.com" --password="EvOu7CR7Iq2V" --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2020, 3, 1) <= date_utc <= datetime(2020, 3, 26)" --count=10000 --request-timeout=300 $id	
	else
	python3 /home/rcf-proj3/aa6/ericaxia/instaloader-4.3/instaloader.py --login="cutebarfkitten@gmail.com" --password="EvOu7CR7Iq2V" --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2020, 3, 1) <= date_utc <= datetime(2020, 3, 26)" --count=10000 --request-timeout=300 $id
	fi
done
