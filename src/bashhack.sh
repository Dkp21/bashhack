#!/bin/bash

#################################################
#
# Useful commands in linux
#
#################################################

# Recursively raplacing a string in all files in a 
# all directories starting from a current directory
# In following example find all occurance of 
# '/sys/aa/bbb' with '/sys/cc/ddd' in all files in
# all directories starting from current directory

find ./ -type f -exec sed -i -e 's/\/sys\/aa\/bbb/\/sys\/cc\/ddd/g' {} \;

# Prepend a line matching a particular pattern with '#'
# In following example prepend a line with '#'which 
# matches pattern "127.127" in file "/etc/ntp.conf"

sed -i.bak /127.127/{'s/^/# /'} /etc/ntp.conf
