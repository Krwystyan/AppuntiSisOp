#!/bin/bash

while read A B C Altro; do
   echo ${C} `grep ${C} ./cadutevic.txt | wc -l`
done < ./cadutevic.txt | sort | uniq 
