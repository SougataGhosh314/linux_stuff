#!/bin/sh

check_prime() {
    current_number=$1
    flag=0
    i=2

    while test $i -le `expr $current_number / 2`
    do
        if test `expr $current_number % $i` -eq 0
        then
            flag=1
        fi
        i=`expr $i + 1`
    done

    if test $flag -eq 0
        then echo $current_number
    fi
}

returned () {
   echo "inside returned()"
   return 9
}

# Calling one function from another
number_one () {
   echo "This is the first function speaking..."
   number_two
}

number_two () {
   echo "This is now the second function speaking..."
}

# Assign From and to number
from_number=$1
to_number=$2

for (( number=$from_number; number<=$to_number; number++ ))
do
    check_prime $number
done

# Calling function one.
number_one

returned
ret=$?
echo $ret


#Sample output:

# [sougata@localhost shell_scripts]$ nano script.sh
# [sougata@localhost shell_scripts]$ ./script.sh 2 30
# 2
# 3
# 5
# 7
# 11
# 13
# 17
# 19
# 23
# 29
# This is the first function speaking...
# This is now the second function speaking...
# inside returned()
# 9