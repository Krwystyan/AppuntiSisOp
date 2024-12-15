#!/bin/bash

IFS=$',\n'
SOMMA=0

while read A B C; do
  echo "${A}","${C}";
  ((SOMMA=${SOMMA}+${B}));
done < input1.txt

echo la somma è ${SOMMA}
