#!/bin/sh

echo "Primes till 100: "

a=3
while [ "$a" -lt 100 ]    # this is loop1
do
  flag=0
  b=2
  while [ "$b" -le `expr $a - 1` ]  # this is loop2
  do
    if [ `expr $a % $b` -eq 0 ]
    then
      flag=1
    fi
    b=`expr $b + 1`
  done
  if [ "$flag" -eq 0 ]
  then
    echo "$a  "
  fi
  a=`expr $a + 1`
done

# Sample output:

# [sougata@localhost shell_scripts]$ nano script.sh
# [sougata@localhost shell_scripts]$ ./script.sh
# Primes till 100:
# 3
# 5
# 7
# 11
# 13
# 17
# 19
# 23
# 29
# 31
# 37
# 41
# 43
# 47
# 53
# 59
# 61
# 67
# 71
# 73
# 79
# 83
# 89
# 97