#!/bin/bash

base_dir="/home/pi/data"
base_name="record"
base_ext="log"

filename="$base_dir/$base_name.$base_ext"

i=0
while [ -e "$filename" ]
do
	filename="$base_dir/$base_name-$i.$base_ext"
	let i=i+1
done

gpspipe -d -r -o "$filename" &

logger "gpspiping started in '$filename'"
