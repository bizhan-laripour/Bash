#!/bin/bash


declare -a shapes=(
"@@@@@"
"@***@"
"***@@***"
"@*@"                                                
"@@**@@"
"***")

   
iscolided=""
idirection=0
jdirection=25
key=""
shape=""
RANDOM=$$$(date +%s)

function display {                                           
   clear

for (( i=0; i<30; i++ ));do
for (( j=0; j<50;j++ ));do

if [[ $i -eq 0 || $i -eq 29 || $j -eq 0 || $j -eq 49 ]];
then
        echo -n "#"
elif [[ $i -eq $idirection && $j -eq $jdirection ]];then
        echo -n $shape
else
        echo -n  " "
fi
        done
        echo
done
}
function getShape {                                     
        if [[ "$iscolided" ==  "true" || "$iscolided" == "" ]];then
        sh=${shapes[$RANDOM % ${#shapes[*]}]}                  
        #printf '%s\n' $shape                                   
        shape=$sh
        iscolided="false"                                      
        fi                                                                                                   
        }

function change_direction {                                                                                             
idirection=$(($idirection +1))
        sleep 0.2
}
function left_right {
 if [ "$key" == a ];then                                         
 jdirection=$(($jdirection -2))               
   elif [ "$key" == d ];then
                jdirection=$(($jdirection +2))                
                fi
        key=""
}
function check_colided {

        if [ $idirection -eq 29 ];then
                iscolided="true"
                idirection=0
        fi

}

while true;do
display
read -t 0.1  -sn1 dir
if [[ "$dir" == a || "$dir" == d ]];then
        key=$dir
        left_right
fi
getShape
change_direction
check_colided

done
   
