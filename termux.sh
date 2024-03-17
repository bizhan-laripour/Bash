#!/bin/bash
# this is a test for arrays
string="hello , world , how , are , you , ?"
translation="salam,chetori"
IFS=','
read -ra array <<< "$string"
for val in "${array[@]}";
do
figlet "$val"
sleep 3
done

echo "do you want translation? (y/n)"
read confirm
if [ $confirm == y ];then

IFS=',' read -ra trans <<< "$translation"
for tr in "${trans[@]}";
do
figlet "$tr"
sleep 3
done
fi

if [ $confirm == n ];then
figlet "nothing"
fi
