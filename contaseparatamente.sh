#!/bin/bash

if [[ $# -eq 0 ]]; then echo "Troppi pochi argomenti"; exit 1; fi;
if [[ $# -gt 9 ]]; then echo "Troppi argomenti"; exit 2; fi;

CONTAPARI=0
CONTADISPARI=0

for((NUM=1;${NUM}<=$#;NUM=${NUM}+1)); do
 if [[ $(($NUM % 2)) -eq 0 ]]; then
	((CONTAPARI=$CONTAPARI+`cat ${!NUM} | wc -l`))
 else
	((CONTADISPARI=$CONTADISPARI+`cat ${!NUM} | wc -l`))
 fi;
done;

echo ${CONTAPARI}
echo ${CONTADISPARI} 1>&2

exit 0;
