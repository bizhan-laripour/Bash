#!/bin/bash
# snake game but not complete
worm="##"
apple="@"                                            
direction=d
idirection=5
jDirection=5                                         
iappleDirection=10                                    
jappleDirection=10
gameOver=false

function display {
    clear
       for ((i=0;i<20;i++)); do
          for ((j=0;j<40;j++)); do
            if [[ $i -eq 0 || $i -eq 19 || $j -eq 0 || $j -eq 39 ]]; then
              echo -n "#"
              elif [[ $i -eq $idirection && $j -eq $jDirection ]]; then                                                        
echo -n $worm                                    
elif [[ $i -eq $iappleDirection && $j -eq $jappleDirection ]]; then
                  echo -n $apple
            else                                                   
            echo -n " "
            fi                                               
            done
          echo                                            
          done
        echo "score:$score"
  }

function change_direction {
            if [ $direction == w ]; then                            
            idirection=$(($idirection -1))               
            elif [ $direction == a ];then
                    jDirection=$(($jDirection -1))             
                    elif [ $direction == s ];then
                    idirection=$(($idirection +1))
            elif [ $direction == d ]; then
                    jDirection=$(($jDirection +1))
            fi
            sleep 0.2
  }

  function random_apple {

          iappleDirection=$((1 + $RANDOM % 19))
          jappleDirection=$((1 + $RANDOM % 29))


  }

  function colided {

          if [[ "$idirection" -eq "$iappleDirection" && "$jDirection" -eq "$jappleDirection" ]];then
                worm=$worm$apple
                score=$(( $score+1 ))
                random_apple
          fi
  }
function game_over {                                  
  if [[ $idirection == 19 || $jDirection == 39 || $idirection == 0 || $jDirection == 0 ]];then

          echo "game over!!"
          echo "final score is $score"
          gameOver=true                                 
  fi
  }

while  true;do
        if [ $gameOver == false ];then
           display
           read -t 0.1  -sn1 dir
           if [[ "$dir" == w || "$dir" == a || "$dir" == s || "$dir" == d ]];then
           direction=$dir
           fi
           change_direction
           colided
           game_over                                         
           fi
done






