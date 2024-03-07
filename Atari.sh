#!/bin/bash                                           
declare -a shapes=(                                                                                            
"@@"                                                 
"¥^¥"                                                
"€&€"                                                 
"¶∆¶"                                               
)                                                      
tir="¥"                                               
exploid="##"                                          
airplain="<[∆]>"                                    
RANDOM=$$$(date +%s)                               

time= 0                                               
iPlainDirection=27                                    
jPlainDirection=23
iEnemy=1                                            
jEnemy=23                                               
input=p
shape=""
function display {
        clear

for (( i=0; i<30; i++ ));do
for (( j=0; j<50;j++ ));do
if [[ $i -eq 0 || $i -eq 29 || $j -eq 0 || $j -eq 49 ]];
then                                                    
echo -n "#"                                                                                                   
elif [[ $i -eq $iPlainDirection && $j -eq $jPlainDirection ]];then
        echo -n $airplain
elif [[ $i -eq $iEnemy && $j -eq $jEnemy && $iEnemy != 29 ]];then
        echo -n $shape
elif [ $iEnemy -eq 29 ];then
        time=0

else
echo -n  " "
fi
    done
     echo
done

}

function enemy {
        if [[  $time -eq 0 ]];then
        sh=${shapes[$RANDOM % ${#shapes[*]}]}
        shape=$sh
        iEnemy=0
        random
        fi
}

function random {
        jEnemy=$((5 + $RANDOM % 44))

}

function enemy_direction {

        iEnemy=$(($iEnemy + 1 ))                     
        }

function plain_change_direction {                       
        if [ $input == w ];then
                iPlainDirection=$(($iPlainDirection - 1))                                                          
                elif [ $input == s ];then                                   
                iPlainDirection=$(($iPlainDirection + 1))
        elif [ $input == a ];then                                    
        jPlainDirection=$(($jPlainDirection - 1))
        elif [ $input == d ];then
                jPlainDirection=$(($jPlainDirection + 1))
        fi
}
while true;do
display
enemy                                                
read -t 0.1  -sn1 dir                                  
if [[ $dir == a || $dir == s || $dir == d || $dir == w ]];then
        input=$dir
        plain_change_direction                         
        fi
sleep 0.2
time=$(( $time + 1 ))                                                                                       
enemy_direction
done
