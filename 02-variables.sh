#!/bin/bash

#providing the data to the variable during executing the script we will use read


echo "plese enter username"
read USERNAME              #username will be stored in this USERNAME variable

echo "please enter password"
read -s PASSWORD             #password  will be stored in this USERNAME variable , but while entering the passsword it should not print on terminal so we ill use -s option.






#printing the username
echo "user is $USERNAME"


#printing the password
echo "passowerd entered is $PASSWORD"




