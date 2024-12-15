#!/bin/bash

if [[ $# -eq 0  ]]; then echo Mi serve una stringa; exit 1; fi;
if [[ -z "$1"  ]]; then echo La stringa passata non deve essere vuota; exit 2; fi;

ComputeString=""

for((i=${#1}; i>=0; i=${i}-1)); do  
 ComputeString="${ComputeString}${1:${i}:1}"
done;

echo BaseString = $1
echo ComputeString = ${ComputeString}
