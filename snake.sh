#!/bin/bash
  clear
  for ((i=0;i<30;i++)); do
    for ((j=0;j<30;j++)); do
      if [[ $i -eq 0 || $i -eq 29 || $j -eq 0 || $j -eq 29 ]]; then
        echo -n "#"
      else
        echo -n " "
      fi
    done
    echo
  done
