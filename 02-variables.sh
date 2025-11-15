#!/bin/bash

#now we are going to see the exit status 

#                              $? in this varible the previous command exit status will be stored 


lssss -ltrh
exit 1


#now the above ls command is failed even tough the script will be continue and execute the below command

ls 



