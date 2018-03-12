#!/bin/bash
# Program:
#	User inputs two numbers and return the cross value
# History:
# 2018/03/12 dingfeng
PATH=/home/dingfeng/bin:/home/dingfeng/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export PATH

echo  "You should input 2 numbers.And I will cross them! \n"
read -p "The first number: " first
read -p "The second number: " seco
total=$(($first*$seco))
echo  "\nThe result of $first and $seco is ---> $total"
