#!/bin/bash

while read Matricola Voto; do
  ALTROVOTO=`grep ${Matricola} esame2.txt`
  if [[ -n ${ALTROVOTO}  ]]; then
	echo "${Matricola} ${ALTROVOTO##*\ }"
  else
	echo "${Matricola} ${Voto}"
  fi;
done < esame1.txt
