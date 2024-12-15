#!/bin/bash

if [[ $# -eq 0 ]]; then echo "Serve il nome del file"; exit 1; fi;
if [[ ! -f  "$*"  ]]; then echo "Il file passato non esiste"; exit 2; fi;

OUT=""

while read  A B C; do OUT="${OUT}${B}"; done < "$1"

echo La concatenazione delle parole è: ${OUT}-

