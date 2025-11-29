#!/bin/bash

# we will implement colours
# we will implement validation.
# we will check if apache and nginx services are alreday installed or not



DATE=$(date +%F) 
LOGDIR=/tmp
SCRIPT_NAME=$0
LOG_FILE=$LOGDIR/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"


for i in $@
do
    yum install $i -y  &>>$LOG_FILE
    if [ $? -ne 0 ]; then
        echo -e "installation of $i......... $R failure $N"
        exit 1
    else
        echo  -e "installation of $i........ $G success $N"
    fi   

done














