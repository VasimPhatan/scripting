#!/bin/bash

#now we will install httpd nginx services 

DATE=$(date +%F)
ID=$(id -u)
SCRIPT_NAME=$0
LOGDIR=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "The script is executed on $DATE"



if [ $ID -ne 0 ] ; then

    echo  -e "you are not root user ...... $R you cannot continue the script $N"
    exit 1
else
    echo "you are root user........ $G you can continue the script $N"
fi

yum install httpd -y  &>>$LOGDIR
if [ $? -ne 0 ]; then 
    echo "installation of httpd.......... $R failure $N"
    exit 1
else 
    echo "installation of httpd........... $G sucecss $N"
fi

yum install nginx -y &>>$LOGDIR
if [ $? -ne 0 ]; then 
    echo "installation of nginx.......... $R failure $N"
    exit 1
else 
    echo "installation of nginx........... $G sucecss $N "
fi













