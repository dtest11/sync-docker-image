#!/bin/bash

file="images"

while read -r line
do
	new_image=`echo ${line#*/} | sed 's|/|-|g'`
	echo "docker pull ${line}"
	echo "docker tag ${line} v5cn/${new_image}"
	echo "docker push v5cn/${new_image}"
done < "$file"