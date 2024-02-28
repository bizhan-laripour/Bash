#!/bin/usr/env bash
# this bash file doesnt work acurately and must be changed
declare -a sportArray
flag="false"
for ((i=0 ; i<10; i++));do
echo please enter a sport:
read input

for val in ${sportArray[@]};
do
        if [ $val == s ];then
                echo this sport is already added
                flag= "true"
                break
        fi
done
if [ $flag == "false" ]; then
sportArray+=($input)
flag="false"

fi
done

echo "${#sportArray[@]}"
for val in ${sportArray[@]};
do
        echo -e "$val \n"
done
