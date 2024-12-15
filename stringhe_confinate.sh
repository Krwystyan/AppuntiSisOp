#!/bin/bash
OLDIFS=${IFS}
#Siccome nel file ho ben deciso che le cose sono suddivise con tab, allora posso procedere direttamente cambiando IFS
IFS=$'\t'
while read  "A" "B" "C" "Altro"; do
 echo ${C} `grep "${C}" cadutevicQuote.txt | wc -l`
done < cadutevicQuote.txt | sort | uniq

IFS=${OLDIFS}
