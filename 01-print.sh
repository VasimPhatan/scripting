#!/bin/bash

# we will implement colours
# we will implement validation.
# we will check if apache and nginx services are alreday installed or not
#we will check if packages already exists skip the installtion if not install.


DATE=$(date +%F) 
LOGDIR=/tmp
SCRIPT_NAME=$0
LOG_FILE=$LOGDIR/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

VALIDATE () {
    if [ $1 -ne 0 ]; then  
        echo -e "installation of $2...........$R failure $N"
        exit 1
    else 
        echo -e "installation of $2...........$G success $N"
    fi
}


for i in $@
do
    yum list installed $i &>>$LOG_FILE
    if [ $? -ne 0 ]
    then
        echo "$i is not installed, let's install it"
        yum install $i -y &>>$LOG_FILE
        VALIDATE $? "$i"
    else
        echo -e "$Y $i is already installed $N"
    fi

done













