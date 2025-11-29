#!/bin/bash

# we will implement colours
# we will implement validation.
# we will check if apache and nginx services are alreday installed or not



DATE=$(date +%F) 
LOGDIR=/tmp
SCRIPT_NAME=$0
LOG_FILE=$LOGDIR/$SCRIPT_NAME-$DATE.log


for i in $@
do
    yum install $@ -y  &>>$LOG_FILE
    if [ $? -ne 0 ]; then
        echo "installation of $@.........failure"
        exit 1
    else
        echo "installation of $@........success"
    fi   

done














