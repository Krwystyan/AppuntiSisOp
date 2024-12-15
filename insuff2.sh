#!/bin/bash

while read Nome2 Cognome2 Id2 Voto; do
  if [[ ${Voto} -lt 18 ]]; then
	if [[ `grep ${Id2} RisultatiProvaPratica1.txt | wc -l` -eq 0 ]]; then
		echo "${Id2} ${Nome2} ${Cognome2} ${Voto}"
	fi;
  fi;
done < RisultatiProvaPratica2.txt | sort -k 3

