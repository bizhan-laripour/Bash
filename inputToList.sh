#!/bin/bash
declare -a sportArray
flag="false"
for ((i=0 ; i<10; i++));do
echo please enter a sport:
read -r input

for val in "${sportArray[@]}";
do
        if [ "$val" == "$input" ];then
                echo "this sport is already added"
                flag="true"
                break

        fi
done
if [ $flag == "false" ]; then
sportArray+=("$input")

fi
flag="false"
done
clear                                                  
echo "number of sports in the Array is :"{#sportArray[@]}""
echo "sports are:"
for val in "${sportArray[@]}";
do
        echo -e "$val \n"
done
