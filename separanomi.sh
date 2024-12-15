#!/bin/bash

OLDIFS=$' \t\n'
PATH=${PATH//":"/""}
IFS=$'/'

for name in ${PATH}; do
 if [[ -n $name ]]; then
 	echo ${name};
 fi;
done
IFS=${OLFIFS}

