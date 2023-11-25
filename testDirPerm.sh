#!/bin/bash

directoryPerm=`ls -lha test2 | awk '{print $4}'`

echo Current : $directoryPerm

newDirectoryPerm=`ls -lha test2 | awk '{print $4}'`

echo $newDirectoryPerm


while :
do
	echo "Press [CTRL+C] to stop.."

	newDirectoryPerm=`ls -lha test2 | awk '{print $4}'`

	currentDate=`date`
	
	if [ "$directoryPerm" = "$newDirectoryPerm" ]
	then
		echo "$currentDate : Permissions have not changed."
	else
		echo "$currentDate : Permissions have changed! GREP_ME"
	fi

		

	sleep 60
done
