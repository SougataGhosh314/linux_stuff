#!/bin/sh

df -k
df -h
mount

# [sougata@localhost shell_scripts]$ ./script.sh
# Filesystem              1K-blocks    Used Available Use% Mounted on
# /dev/mapper/centos-root  17811456 4838520  12972936  28% /
# devtmpfs                   896448       0    896448   0% /dev
# tmpfs                      908332       0    908332   0% /dev/shm
# tmpfs                      908332    9192    899140   2% /run
# tmpfs                      908332       0    908332   0% /sys/fs/cgroup
# /dev/sda1                 1038336  147708    890628  15% /boot
# tmpfs                      181668       0    181668   0% /run/user/1000

# 24K

# sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime,seclabel)
# proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
# devtmpfs on /dev type devtmpfs (rw,nosuid,seclabel,size=896448k,nr_inodes=224112,mode=755)
# securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
# tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev,seclabel)
# devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,seclabel,gid=5,mode=620,ptmxmode=000)
# tmpfs on /run type tmpfs (rw,nosuid,nodev,seclabel,mode=755)
# tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,seclabel,mode=755)
# cgroup on /sys/fs/cgroup/systemd type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,xattr,release_agent=/usr/lib/systemd/systemd-cgroups-agent,name=systemd)
# pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
# cgroup on /sys/fs/cgroup/devices type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,devices)
# cgroup on /sys/fs/cgroup/memory type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,memory)
# cgroup on /sys/fs/cgroup/blkio type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,blkio)
# cgroup on /sys/fs/cgroup/cpu,cpuacct type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,cpuacct,cpu)
# cgroup on /sys/fs/cgroup/freezer type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,freezer)
# cgroup on /sys/fs/cgroup/cpuset type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,cpuset)
# cgroup on /sys/fs/cgroup/perf_event type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,perf_event)
# cgroup on /sys/fs/cgroup/net_cls,net_prio type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,net_prio,net_cls)
# cgroup on /sys/fs/cgroup/hugetlb type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,hugetlb)
# cgroup on /sys/fs/cgroup/pids type cgroup (rw,nosuid,nodev,noexec,relatime,seclabel,pids)
# configfs on /sys/kernel/config type configfs (rw,relatime)
# /dev/mapper/centos-root on / type xfs (rw,relatime,seclabel,attr2,inode64,noquota)
# selinuxfs on /sys/fs/selinux type selinuxfs (rw,relatime)
# systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=35,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=16836)
# mqueue on /dev/mqueue type mqueue (rw,relatime,seclabel)
# hugetlbfs on /dev/hugepages type hugetlbfs (rw,relatime,seclabel)
# debugfs on /sys/kernel/debug type debugfs (rw,relatime)
# /dev/sda1 on /boot type xfs (rw,relatime,seclabel,attr2,inode64,noquota)
# tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,seclabel,size=181668k,mode=700,uid=1000,gid=1000)