#!/bin/bash
string="hello , world , how , are , you , ?"
IFS=','
read -ra array <<< "$string"
for val in "${array[@]}";
do
figlet "$val"
done
