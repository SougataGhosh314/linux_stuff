#!/bin/sh

a=0

while [ $a -lt 10 ]
do
   echo $a
   if [ $a -eq 5 ]
   then
      break
   fi
   a=`expr $a + 1`
done

for var1 in 1 2 3 4 5
do
   for var2 in 0 8
   do
      if [ $var1 -eq 2 -a $var2 -eq 3 ]
      then
         break 2
      else
         echo "$var1 $var2"
      fi
   done
done

NUMS="1 2 3 4 5 6 7"

for NUM in $NUMS
do
   Q=`expr $NUM % 2`
   if [ $Q -eq 0 ]
   then
      echo "Number is an even number!!"
      continue
   fi
   echo "Found odd number"
done


# Sample output:

# [sougata@localhost shell_scripts]$ nano script.sh
# [sougata@localhost shell_scripts]$ ./script.sh
# 0
# 1
# 2
# 3
# 4
# 5
# 1 0
# 1 8
# 2 0
# 2 8
# 3 0
# 3 8
# 4 0
# 4 8
# 5 0
# 5 8
# Found odd number
# Number is an even number!!
# Found odd number
# Number is an even number!!
# Found odd number
# Number is an even number!!
# Found odd number