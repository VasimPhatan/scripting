#!/bin/bash

#now we will install httpd nginx services abnd we will use functions for validation. 

DATE=$(date +%F)
ID=$(id -u)
SCRIPT_NAME=$0
LOGDIR=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE () {
    if [ $1 -ne 0 ]; then 
      echo -e "$2.......... $R failure $N"
      exit 1
    else 
       echo -e "$2........... $G sucecss $N"
    fi
}



if [ $ID -ne 0 ] ; then

    echo  -e "you are not root user ...... $R you cannot continue the script $N"
    exit 1
else
    echo -e "you are root user........ $G you can continue the script $N"
fi

yum install httpd -y  &>>$LOGDIR
VALIDATE $? "installtion of httpd"



yum install nginx -y &>>$LOGDIR
VALIDATE $? "installtion of nginx"















