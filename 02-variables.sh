#!/bin/bash

#taking inputs before executing  the script


a=$1
b=$2

SCRIPT_NAME=$0

TOTAL_VARIABLES_PASSED=$*
TOTAL_VARIABLES_PASSED_1=$@
NUMBER_OF_VARIABLES_PASSED=$#




echo "vaulue of a is $a"

echo "value of b is $b"


echo "to print the total variables passed $TOTAL_VARIABLES_PASSED"

echo "to print the number of variables passed $NUMBER_OF_VARIABLES_PASSED"

echo "to print the script name $SCRIPT_NAME"




