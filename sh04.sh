#!/bin/bash
# Program:
#	A program shows the script default parameters
# History:
# 2018/03/12 dingfeng
PATH=/home/dingfeng/bin:/home/dingfeng/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export PATH

echo "The script name is		==> $0"
echo "The total parameter number is	==> $#"
[ "$#" -lt 3 ] && echo "The number of parameter is less than 1." && exit 0
echo "The 1st parameter is		==> $1"
echo "The 2nd parameter is		==> $2" 
echo "The 3rd parameter is 		==> $3"

echo "Your whole parameter 		==> $@"
# Then we begin to shift the parameter
echo "Then we begin to shift the parameter"
shift 2
echo "Now your whole parameter after we shift 2	==> $@"
