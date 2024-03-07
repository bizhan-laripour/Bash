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
