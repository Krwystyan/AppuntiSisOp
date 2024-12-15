#!/bin/bash

if [[ $# -eq 0 ]]; then echo Il numero di argomenti passato deve essere esattamente 1; exit 1; fi;
if [[ -v "$1" ]]; then echo Nessuno degli argomenti deve essere una stringa vuota; exit 2; fi;


find "$1" -type f -exec ./es35.sh '{}' \;
