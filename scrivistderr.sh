#!/bin/bash

while read lines; do
  echo Evviva
  PAROLA="${lines%% *}"
  echo "${PAROLA}" 1>&2
done
