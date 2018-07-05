#!/bin/bash

#USAGE: sh script.sh <directory to monitor>

directoryPerm=`ls -ld $1 | awk '{print $1 " " $3 " " $4 " " $9}'`

echo Current : $directoryPerm

newDirectoryPerm=`ls -ld $1 | awk '{print $1 " " $3 " " $4 " " $9}'`

echo "Press [CTRL+C] to stop.."

while :
do
        newDirectoryPerm=`ls -ld $1 | awk '{print $1 " " $3 " " $4 " " $9}'`

        currentDate=`date`

        if [ "$directoryPerm" = "$newDirectoryPerm" ]
        then
                echo "$currentDate : Permissions have not changed: $directoryPerm"
        else
                echo "$currentDate : Permissions have changed! Old: $directoryPerm New: $newDirectoryPerm"
		directoryPerm=$newDirectoryPerm
		
		#INSERT LOGS/COMMANDS TO OUTPUT HERE:
		# EXAMPLE: tail /var/log/messages
        fi

        sleep 15 
done
