#!/bin/bash

#this script is to delete the logs older.from present date it will keep 14 days files and remaining files which extension we have defined it will delete those files 

#command to search find the oldr than 2 weeks.
#find /pathofthefiles -name "*.log" -type f -mtime 14

#we will use while loops to delete the files.

DATE=$(date +%F)
APP_LOG_DIRECTORY=/home/centos/app_logs  #this is the path logs files need to be delete
SCRIPT_NAME=$0
LOG_FILE=/home/centos/$SCRIPT_NAME-$DATE.log

echo "script started executing at  $DATE" &>>$LOG_FILE

FILES_TO_DELETE=$(find $APP_LOG_DIRECTORY -name "*.log" -type f -mtime +14)  # this will find the files to be deleted

while read line     # it will take first line from output and delete and continous in loop until all files gets deleted.
do
    echo "deleting $line" &>> $LOG_FILE
    rm -rf $line
    
done <<< $FILES_TO_DELETE   #we are passing the ouput of find command as input to while loop














