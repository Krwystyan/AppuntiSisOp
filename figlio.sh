#!/bin/bash

((INDICE = ${INDICE} + 1))
echo Sono il processo figlio numero $$

if [[ ${INDICE} -lt 10 ]]; then
 ./figlio.sh;
fi;
