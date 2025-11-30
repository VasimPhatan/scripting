#!/bin/bash

#this script is to delete the logs older.from present date it will keep 14 days files and remaining files which extension we have defined it will delete those files 

#command to search find the oldr than 2 weeks.
#find /pathofthefiles -name "*.log" -type f -mtime 14

#we will use while loops to delete the files.

DATE=$(date +%F)
APP_LOG_DIRECTORY=/home/centos/app_logs
SCRIPT_NAME=$0
LOG_FILE=$APP_LOG_DIRECTORY/$SCRIPT_NAME-$DATE.log

echo "$LOG_FILE"  &>>$LOG_FILE

FILES_TO_DELETE=$(find $APP_LOG_DIRECTORY -name "*.log" -type f -mtime +14)

while read line
do
    echo "deleting $line" &>> $LOG_FILE
    rm -rf $line
    
done <<< $FILES_TO_DELETE














