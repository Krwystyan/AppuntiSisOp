#!/bin/bash

VAR="? [ ]"
while read lines; do
 PAROLA=$(echo "$lines" | sed 's/*/\\*/g')
 for cr in $VAR; do
  PAROLA="${PAROLA//"$cr"/\\"${cr}"}"
 done;
 echo $PAROLA
done
