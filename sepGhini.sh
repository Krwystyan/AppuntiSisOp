#!/bin/bash
 RESIDUO=${PATH}
 while [[ -n ${RESIDUO} ]]  ; do
 	PRIMOPERCORSO=${RESIDUO%%:*} #elimina il suffisso più lungo
 	echo ${PRIMOPERCORSO} #stampa il primo percorso
	PRECEDENTERESIDUO=${RESIDUO} #riassegna la var iniziale per il controllo
 	RESIDUO=${RESIDUO#*:} #cancella il prefissio più corto, in poche parole cancella l'ultima parola letta
 	if [[ ${PRECEDENTERESIDUO} == ${RESIDUO} ]] ; then #cotrolla che non sia vuoto
 		break
 	fi
 done
