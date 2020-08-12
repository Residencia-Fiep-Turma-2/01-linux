#! /bin/bash

for i in `seq 1 99` ; do
	var=$((i%2))
	if [ $var -ne 0 ]; then
  		echo "$i"
  	fi 
done



