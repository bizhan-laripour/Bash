#!/bin/bash
clear
string="hello , world , how , are , you , ?"
translation="salam,chetori"
IFS=','
read -ra array <<< "$string"
for val in "${array[@]}";
do
figlet "$val"
sleep 3
done

echo do you want translation? (y/n)
IFS=',' read -ra trans <<< "$translation"
for tr in "${trans[@]}"; 
do
figlet "$tr"
sleep 3
done
