#!/bin/bash

if [[ $# -eq 0 || $# -gt 1 ]]; then echo bisogna passare esattamente un solo argomento; exit 1; fi;

PASSATO=$1
for (( NUM=0; $NUM<$PASSATO; NUM=$NUM+1 )); do
  ./discendenti.sh $(($PASSATO-1)) &
done;
 
wait

echo ${PASSATO}
exit 0;
