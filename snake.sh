#!/bin/bash
  clear
  for ((i=0;i<20;i++)); do
    for ((j=0;j<40;j++)); do
      if [[ $i -eq 0 || $i -eq 19 || $j -eq 0 || $j -eq 39 ]]; then
        echo -n "#"
        sleep 0.01

        elif [[ $i -eq 5 && $j -eq 5 ]]; then
            echo -n "@@@"
        elif [[ $i -eq 10 && $j -eq 10 ]]; then
            echo -n "@"
      else
        echo -n " "
        sleep 0.01
      fi
    done
    echo 
  done
  echo "score:"
