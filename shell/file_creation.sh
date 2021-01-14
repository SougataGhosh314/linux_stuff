#!/bin/sh

echo "There is no path to happiness. Happiness is the path." >> quote.txt
printf 'It is ridiculous to think that somebody else can make you happy or unhappy.\n'  >> quote.txt
printf 'Happiness does not depend on what you have or who you are. -- Buddha\n' >> quote.txt



# Sample output:

# [sougata@localhost shell_scripts]$ nano script.sh
# [sougata@localhost shell_scripts]$ ./script.sh
# [sougata@localhost shell_scripts]$ ls
# quote.txt  script.sh
# [sougata@localhost shell_scripts]$ cat quote.txt
# There is no path to happiness. Happiness is the path.
# It is ridiculous to think that somebody else can make you happy or unhappy.
# Happiness does not depend on what you have or who you are. -- Buddha