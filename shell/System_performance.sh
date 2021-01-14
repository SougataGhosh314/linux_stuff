# # Unix has following major resource types that need to be monitored and tuned −

# # CPU

# # Memory

# # Disk space

# # Communications lines

# # I/O Time

# # Network Time

# # Applications programs

# # Performance Components
# # The following table lists out five major components which take up the system time −

# # Sr.No.	Component & Description
# # 1	
# # User State CPU

# # The actual amount of time the CPU spends running the users’ program in the user state. It includes the time spent executing library calls, but does not include the time spent in the kernel on its behalf

# # 2	
# # System State CPU

# # This is the amount of time the CPU spends in the system state on behalf of this program. All I/O routines require kernel services. The programmer can affect this value by blocking I/O transfers

# # 3	
# # I/O Time and Network Time

# # This is the amount of time spent moving data and servicing I/O requests

# # 4	
# # Virtual Memory Performance

# # This includes context switching and swapping

# # 5	
# # Application Program

# # Time spent running other programs - when the system is not servicing this application because another application currently has the CPU

# # Performance Tools
# # Unix provides following important tools to measure and fine tune Unix system performance −

# # Sr.No.	Command & Description
# # 1	
# # nice/renice

# # Runs a program with modified scheduling priority

# # 2	
# # netstat

# # Prints network connections, routing tables, interface statistics, masquerade connections, and multicast memberships

# # 3	
# # time

# # Helps time a simple command or give resource usage

# # 4	
# # uptime

# # This is System Load Average

# # 5	
# # ps

# # Reports a snapshot of the current processes

# # 6	
# # vmstat

# # Reports virtual memory statistics

# # 7	
# # gprof

# # Displays call graph profile data

# # 8	
# # prof

# # Facilitates Process Profiling

# # 9	
# # top

# # Displays system tasks

# [sougata@localhost shell_scripts]$ top
# top - 02:03:34 up  1:41,  2 users,  load average: 0.01, 0.05, 0.05
# Tasks: 106 total,   2 running, 104 sleeping,   0 stopped,   0 zombie
# %Cpu(s):  0.0 us,  0.3 sy,  0.0 ni, 99.7 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
# KiB Mem :  1816668 total,   414796 free,  1041352 used,   360520 buff/cache
# KiB Swap:  2097148 total,  2097148 free,        0 used.   592724 avail Mem

#   PID USER      PR  NI    VIRT    RES    SHR S %CPU %MEM     TIME+ COMMAND
# 29714 sougata   20   0  161996   2220   1556 R  0.3  0.1   0:00.10 top
#     1 root      20   0  128024   6592   4152 S  0.0  0.4   0:02.12 systemd
#     2 root      20   0       0      0      0 S  0.0  0.0   0:00.00 kthreadd
#     3 root      20   0       0      0      0 S  0.0  0.0   0:00.13 ksoftirqd/0
#     5 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 kworker/0:0H
#     6 root      20   0       0      0      0 S  0.0  0.0   0:00.02 kworker/u2:0
#     7 root      rt   0       0      0      0 S  0.0  0.0   0:00.00 migration/0
#     8 root      20   0       0      0      0 S  0.0  0.0   0:00.00 rcu_bh
#     9 root      20   0       0      0      0 R  0.0  0.0   0:01.68 rcu_sched
#    10 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 lru-add-drain
#    11 root      rt   0       0      0      0 S  0.0  0.0   0:00.07 watchdog/0
#    13 root      20   0       0      0      0 S  0.0  0.0   0:00.00 kdevtmpfs
#    14 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 netns
#    15 root      20   0       0      0      0 S  0.0  0.0   0:00.00 khungtaskd
#    16 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 writeback
#    17 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 kintegrityd
#    18 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 bioset
#    19 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 bioset
#    20 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 bioset
#    21 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 kblockd
#    22 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 md
#    23 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 edac-poller
#    24 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 watchdogd
#    30 root      20   0       0      0      0 S  0.0  0.0   0:00.00 kswapd0
#    31 root      25   5       0      0      0 S  0.0  0.0   0:00.00 ksmd
#    32 root      39  19       0      0      0 S  0.0  0.0   0:00.04 khugepaged
#    33 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 crypto
#    41 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 kthrotld

# [sougata@localhost shell_scripts]$ time

# real    0m0.000s
# user    0m0.000s
# sys     0m0.000s
# [sougata@localhost shell_scripts]$ uptime
#  02:02:45 up  1:40,  2 users,  load average: 0.03, 0.06, 0.05
# [sougata@localhost shell_scripts]$ ps
#   PID TTY          TIME CMD
# 13102 pts/0    00:00:00 bash
# 29709 pts/0    00:00:00 ps
# [sougata@localhost shell_scripts]$ vmstat
# procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
#  r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
#  2  0      0 415488   2108 357912    0    0    54     5   21   98  1  2 97  0  0