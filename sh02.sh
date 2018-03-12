#!/bin/bash
# Program:
#	User inputs a filename,and we will check the following:
#	1)exist?	2)file/directory?	3)file permissions
# History:
# 2018/03/12 dingfeng
PATH=/home/dingfeng/bin:/home/dingfeng/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export PATH

read -p "Please input a filename:" filename
test -z $filename && echo "Must enter a filename." && exit 0

test ! -e $filename && echo "$filename do not exist!\n" && exit 0

test -f $filename && filetype="regular file"
test -d $filename && filetype="directory"

test -r $filename && per="readable"
test -w $filename && per="$per writable"
test -x $filename && per="$per executable"

echo "$filename is a $filetype\n"
echo "And the permissions are $per\n"
