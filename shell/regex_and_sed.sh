# The sed General Syntax
# Following is the general syntax for sed −

# /pattern/action

#!/bin/sh

# working with addresses sed

sed -e 'd' quote.txt
sed '1d' quote.txt | more
sed '1, 3d' quote.txt |more
sed '/^Hap/d' quote.txt


# outputs:

# [sougata@localhost shell_scripts]$ nano script.sh
# [sougata@localhost shell_scripts]$ ./script.sh
# It is ridiculous to think that somebody else can make you happy or unhappy.
# Happiness does not depend on what you have or who you are. -- Buddha
# There is no path to happiness. Happiness is the path.
# It is ridiculous to think that somebody else can make you happy or unhappy.

# [sougata@localhost shell_scripts]$ sed '1d' quote.txt | more
# It is ridiculous to think that somebody else can make you happy or unhappy.
# Happiness does not depend on what you have or who you are. -- Buddha

# [sougata@localhost shell_scripts]$ ls
# quote.txt  script.sh
# [sougata@localhost shell_scripts]$ cat quote.txt | sed
# Usage: sed [OPTION]... {script-only-if-no-other-script} [input-file]...

#   -n, --quiet, --silent
#                  suppress automatic printing of pattern space
#   -e script, --expression=script
#                  add the script to the commands to be executed
#   -f script-file, --file=script-file
#                  add the contents of script-file to the commands to be executed
#   --follow-symlinks
#                  follow symlinks when processing in place
#   -i[SUFFIX], --in-place[=SUFFIX]
#                  edit files in place (makes backup if SUFFIX supplied)
#   -c, --copy
#                  use copy instead of rename when shuffling files in -i mode
#   -b, --binary
#                  does nothing; for compatibility with WIN32/CYGWIN/MSDOS/EMX (
#                  open files in binary mode (CR+LFs are not treated specially))
#   -l N, --line-length=N
#                  specify the desired line-wrap length for the `l' command
#   --posix
#                  disable all GNU extensions.
#   -r, --regexp-extended
#                  use extended regular expressions in the script.
#   -s, --separate
#                  consider files as separate rather than as a single continuous
#                  long stream.
#   -u, --unbuffered
#                  load minimal amounts of data from the input files and flush
#                  the output buffers more often
#   -z, --null-data
#                  separate lines by NUL characters
#   --help
#                  display this help and exit
#   --version
#                  output version information and exit

# If no -e, --expression, -f, or --file option is given, then the first
# non-option argument is taken as the sed script to interpret.  All
# remaining arguments are names of input files; if no input files are
# specified, then the standard input is read.

# GNU sed home page: <http://www.gnu.org/software/sed/>.
# General help using GNU software: <http://www.gnu.org/gethelp/>.