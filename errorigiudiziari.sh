#!/bin/bash

exec {DFD}<denunce.txt

while read -u ${DFD} Nome Cognome IdUtente Reato; do
 exec {PFD}<processi.txt
 while read -u ${PFD} IdUtenteP IdProcesso; do 
	if [[ ${IdUtente} -eq ${IdUtenteP} ]]; then
		exec {VFD}<verdetti.txt
		while read -u ${VFD} IdProcesso2 Verdetto; do 
			if [[ ${IdProcesso} -eq ${IdProcesso2} ]]; then
				echo ${Nome} - ${Cognome} - ${Reato} - ${Verdetto}
			fi;
		done;
	{VFD}>&-
	fi;
 done;
 {PFD}>&-
done;

{DFD}>&-
