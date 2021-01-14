# Managing Users and Groups
# There are four main user administration files −

# /etc/passwd − Keeps the user account and password information. This file holds the majority of information about accounts on the Unix system.

# /etc/shadow − Holds the encrypted password of the corresponding account. Not all the systems support this file.

# /etc/group − This file contains the group information for each account.

# /etc/gshadow − This file contains secure group account information.

# Sr.No.	Command & Description
# 1	
# useradd  Adds accounts to the system

# 2	
# usermod  Modifies account attributes

# 3	
# userdel  Deletes accounts from the system

# 4	
# groupadd  Adds groups to the system

# 5	
# groupmod  Modifies group attributes

# 6	
# groupdel  Removes groups from the system

#!/bin/sh

groupadd jLeague
groupmod -n Justice_League jLeague
groupmod -g 545 Justice_League
groupdel Justice_League

groupadd Justice_League

useradd -d /home/Bruce_Wayne -g Justice_League -s /bin/ksh Bruce_Wayne
useradd -d /home/Superman -g Justice_League -s /bin/ksh Superman
usermod -d /home/Clark_Kent -m -l Clark_Kent Superman
userdel -r Clark_Kent


# Sample output

# changing password for Bruce_Wayne

# [sougata@localhost shell_scripts]$ sudo passwd Bruce_Wayne
# Changing password for user Bruce_Wayne.
# New password:
# BAD PASSWORD: The password is shorter than 8 characters
# Retype new password:
# passwd: all authentication tokens updated successfully.

