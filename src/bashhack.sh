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
# Also, create a backup of original file

sed -i.bak /127.127/{'s/^/# /'} /etc/ntp.conf

# Extracting a value from a configuration file using 'awk'
# Let say you have a key=value pair in some file(/tmp/my.conf)
# and you want to extract a value for that key using awk

extracted_value=$(awk -F '=' '/^key/ {print $2}' /tmp/my.conf)

# Removing all unnecessary trailing wihte-spaces from a file
sed -i 's/[[:space:]]*$//' myfile.txt

# Removing a line matching a string from a file(inline replacement)
sed -i '/string pattern/d' ./inpfile
