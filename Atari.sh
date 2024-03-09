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

declare -a tirList=()                                   
function display {
        clear
for (( i=0; i<30; i++ ));do
for (( j=0; j<50;j++ ));do
if [[ $i -eq 0 || $i -eq 29 || $j -eq 0 || $j -eq 49 ]];then                                                    
echo -n "#"

elif [[ $i -eq $iPlainDirection && $j -eq $jPlainDirection ]];then
        echo -n $airplain
elif [[ $i -eq $iEnemy && $j -eq $jEnemy ]];then
        echo -n $shape

else
echo -n  " "
fi
    done
     echo
done

}

function enemy {                                                
if [[ $time -eq 25 || $time -eq 0 ]];then
        sh=${shapes[$RANDOM % ${#shapes[*]}]}
        shape=$sh                                               
        iEnemy=0
        random
        fi
}                                                       
function random {
        jEnemy=$((5 + $RANDOM % 44))

}

function check_time {
  if [ $time -eq 25 ];then
      time=0
  fi
}

function throw {
colon=","
t=$iPlainDirection$colon$jPlainDirection
tirlist+=($t)

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
elif [[ $dir == l ]];then
        throw
fi
sleep 0.2
time=$(( $time + 1 ))
check_time

enemy_direction

done
