#!/bin/bash

# Run Instaloader (python program) in loop over all given non-food hashtags
# Download posts using specified params

## DON'T PUT COMMAS when creating array!!!
declare -a StringArray=("#instafood" "#foodporn" "#recipe" "#cleaneating" "#foodoftheday" "#foodinspiration" "#foodie" "#foodpics" "#foodgasm")


# Download posts of each hashtag in StringArray
# Switch off btwn diff user accounts to avoid being blocked
count=0
for x in "${StringArray[@]}"; do
	count=$(( $count + 1 ))
	echo $count
	if [ $(($count%2)) -eq 0 ]; then
		instaloader --login="sunwisdom101@gmail.com" --password="EvOu7CR7Iq2V" --fast-update --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2019, 6, 1) <= date_utc <= datetime(2020, 2, 29)" --count=20000 --request-timeout=180 $x
	elif [ $(($count%3)) -eq 0 ]; then	
		instaloader --login="cutebarfkitten@gmail.com" --password="EvOu7CR7Iq2V" --fast-update --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2019, 6, 1) <= date_utc <= datetime(2020, 2, 29)" --count=20000 --request-timeout=180 $x
	else
		instaloader --login="jadeite.stream@gmail.com" --password="EvOu7CR7Iq2V" --fast-update --no-videos --geotags --comments --no-compress-json --post-filter="datetime(2019, 6, 1) <= date_utc <= datetime(2020, 2, 29)" --count=20000 --request-timeout=180 $x
	fi
done
