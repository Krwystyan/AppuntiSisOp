#!/bin/bash

FILES=`find /usr/include/linux/ -mindepth 2 -iname *.h -type f`

for RECENTE in ${FILES}; do break; done;
for NB in ${FILES}; do
  if [[ $NB -nt $RECENTE ]]; then
	RECENTE=${NB}
  fi;
done

echo ${RECENTE}
