#!/bin/sh

NAME="Bruce Wayne"
echo $NAME

unset NAME
echo $NAME

echo $$

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

echo "All tokens: "
for TOKEN in $*
do
   echo "$TOKEN  "
done

echo "exit status: "
echo $?


# Sample output:

# [sougata@localhost shell_scripts]$ ./script.sh Bruce Wayne
# Bruce Wayne

# 14412
# File Name: ./script.sh
# First Parameter : Bruce
# Second Parameter : Wayne
# Quoted Values: Bruce Wayne
# Quoted Values: Bruce Wayne
# Total Number of Parameters : 2
# All tokens:
# Bruce
# Wayne
# exit status:
# 0
