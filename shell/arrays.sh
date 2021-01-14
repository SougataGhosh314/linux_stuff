#!/bin/sh

NAME[0]="Bruce"
NAME[1]="Clark"
NAME[2]="Dianna"
NAME[3]="Barry"
NAME[4]="Alfred"

echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"

# Sample output:

# [sougata@localhost shell_scripts]$ nano script.sh
# [sougata@localhost shell_scripts]$ ./script.sh
# First Index: Bruce
# Second Index: Clark
# First Method: Bruce Clark Dianna Barry Alfred
# Second Method: Bruce Clark Dianna Barry Alfred