#!/bin/bash
# Program:
# 	Use loop to calculate the sum of 1+2+..+100
#	for loop and while loop and until loop
# History:
# 2018/03/19 dingfeng
PATH=/home/dingfeng/bin:/home/dingfeng/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export PATH

echo "This program will calculate the sum of 1+2+...+100"
	sum=0;
for i in $(seq 1 100)
do
	sum=$(($sum+$i))
done
echo "That's we use 'for' loop to get the answer" $sum

	i=1;
	sum=0;
while [ "$i" -le "100" ]
do
	sum=$(($sum+$i))
	i=$(($i+1));
done
echo "That's we use 'while' loop to get the answer" $sum

	i=1;
	sum=0;
until [ "$i" -eq "101" ]
do
	sum=$(($sum+$i))
	i=$(($i+1));
done
echo "That's we use 'until' loop to get the answer" $sum

