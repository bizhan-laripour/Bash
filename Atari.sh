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
function display {
        clear

for (( i=0; i<30; i++ ));do
for (( j=0; j<50;j++ ));do
if [[ $i -eq 0 || $i -eq 29 || $j -eq 0 || $j -eq 49 ]];
then                                                           
echo -n "#"                                  
else
echo -n  " "
fi
    done
     echo
done

}

display
