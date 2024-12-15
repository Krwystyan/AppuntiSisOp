#!/bin/bash

CHECK=1
exec {FD}<WordEs28.txt

while read -u ${FD} A; do  
 if [[ ($? -eq 0 || -v ${a}) && ${CHECK} -eq 1 ]]; then
	echo  "${A}"
	CHECK=0
 else
	CHECK=1
 fi;
done;

{FD}>&-
