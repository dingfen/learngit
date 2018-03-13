#!/bin/bash
# Program:
# 	A program to calculate date.Input two dates and then figure out
#	how many days in them
# History:
# 2018/03/13 dingfeng
PATH=/home/dingfeng/bin:/home/dingfeng/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export PATH

echo "This program will calculate:"
echo "How many days between the two dates."
echo "date ex>20040323"
read -p "Enter your first date:" $date_1
read -p "Enter your second date:" $date_2


date_d=$(echo $date_1 | grep '[0-9] \{8\}')
if [ "date_d" == "" ]; then
	echo "Your input the wrong date format!"
	exit 1
fi

date_d=$(echo $date_2 | grep '[0-9] \{8\}')
if [ "date_d" == "" ]; then
	echo "Your input the wrong date format!"
	exit 1
fi


declare -i date_a='date --date=$date_1 +%s'
declare -i date_b='date --date=$date_2 +%s'
declare -i date_t=$(($date_a-$date_b))
declare -i date_d=$(($date_t/60/60/24))

if [ "$date_t" -lt 0 ]; then 
	echo "You will get a negative number"
else
	declare -i date_h=$(($(($date_t-$date_d*60*60*24))/60/60))
	echo "Between two dates are $date_d days and $date_h hours."
fi
