#!/bin/bash

if [[ $# -le 1 ]]; then echo È necessario passare tutti e due gli argomenti necessari; exit 1; fi;
if [[ -v "$1" || -v "$2" ]]; then echo Nessuno dei due argomenti passati deve essere una stringa vuota; exit 2; fi; 

find $1 -iname $2
