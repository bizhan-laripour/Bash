#!/bin/bash

worm="@@@"
apple="@"
direction="o"
idirection=5
jDirection=5
  declare -a keys=( w a s d)

  function display {
    clear
       for ((i=0;i<20;i++)); do
          for ((j=0;j<40;j++)); do
            if [[ $i -eq 0 || $i -eq 19 || $j -eq 0 || $j -eq 39 ]]; then
              echo -n "#"


              elif [[ $i -eq $idirection && $j -eq $jDirection ]]; then
                  echo -n $worm
              elif [[ $i -eq 10 && $j -eq 10 ]]; then
                  echo -n $apple
            else
              echo -n " "

            fi
          done
          echo
        done
        echo "score:"
  }


  function change_direction {
            if [ $direction == w ]; then
              idirection=$idirection-1
            elif [ $direction == a ];then
              jDirection=$jDirection-1
            elif [ $direction == s ];then
              idirection=$idirection+1
            elif [ $direction == d ]; then
                jDirection=$jDirection+1
            fi
            sleep 0.9
  }

  function colided {

          if [[ "$idirection" -eq "$iappleDirection" && "$jDirection" -eq "$jappleDirection" ]];then
                worm=$worm$apple
                score=$(( $score+1 ))
          fi

  }

while  true;do
  display
  read -t 0.1  -sn1 dir
  if [[ "$dir" == w || "$dir" == a || "$dir" == s || "$dir" == d ]];then
         direction=$dir

  fi
  change_direction
  colided

done







