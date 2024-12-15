#!/bin/bash

nFile=0
LungNomiDirectory=0

for thing in `ls ./` ; do
 if [[ -d ${thing} ]]; then
	((LungNomiDirectory=${LungNomiDirectory}+${#thing}))
 else
	((nFile=${nFile}+1))
 fi;
done;

echo  Il numero di file totali è ${nFile}, mentre la lunghe accumulata dei nomi delle directory è ${LungNomiDirectory}
