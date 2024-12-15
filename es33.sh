#!/bin/bash

if [[ $# -le 1 ]]; then echo Devi passare esattamente 2 argomenti; exit 1; fi;
if [[ -v $1 || -v $2 ]]; then echo Nessuno dei due argomenti passati deve essere vuoto; exit 2; fi;

find "$1" -mindepth 2  -maxdepth 2 -iname $2 -type f 
