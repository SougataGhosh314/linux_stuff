#!/bin/sh

DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"

echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"

echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"

unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"

var="Prefix"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"

echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"

# Sample output:

# [sougata@localhost shell_scripts]$ nano script.sh
# [sougata@localhost shell_scripts]$ ./script.sh
# Date is Thu Jan 14 01:08:17 EST 2021
# Logged in user are 2
# Uptime is Thu Jan 14 01:08:17 EST 2021
#  01:08:17 up 45 min,  2 users,  load average: 0.00, 0.05, 0.06
# Variable is not set
# 1 - Value of var is
# Variable is not set
# 2 - Value of var is Variable is not set

# 3 - Value of var is
# This is default value
# 4 - Value of var is Prefix
# Prefix
# 5 - Value of var is Prefix