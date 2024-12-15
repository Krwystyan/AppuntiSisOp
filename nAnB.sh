#!/bin/bash

PAROLA="$1"
NA=0
NB=0

for((NUM=0;NUM<${#PAROLA};NUM=${NUM}+1)); do
 CHARS=${PAROLA:${NUM}:1}
 if [[ ${CHARS} == "A" ]]; then
	((NA=${NA}+1));
 else
	if [[ ${CHARS} == "B" ]]; then
		((NB=${NB}+1))
	else
		((NUM=${#PAROLA}))
	fi;
 fi;
done;


if [[ ${NA} -gt 0 && ${NA} -eq ${NB} ]]; then
	echo vero N=${NA}
else
	echo falso
fi;
