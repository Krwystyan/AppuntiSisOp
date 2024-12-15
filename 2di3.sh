#!/bin/bash

while read A B C; do 
 if [[ -v C ]]; then
  if ((${#C} >= 2)); then
   echo "${C:1:1}";
  fi
 fi
done < /usr/include//stdio.h

