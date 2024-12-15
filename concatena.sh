#!/bin/bash

echo -n "" > output.txt

for nFile in /usr/include/std* ; do
 if [[ -e ${nFile} ]]; then 
  NUM=0
  exec {FD}<${nFile}
  while read -u ${FD} line; do
    ((NUM=${NUM}+1))
    if [[ ${NUM} -gt 1 && ${NUM} -lt 4 ]]; then
	echo "${line}" >> output.txt
    fi;
  done;
  exec {FD}>&-
 fi;
done;

