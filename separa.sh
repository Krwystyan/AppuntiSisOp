#!/bin/bash

IFS=$':'
for ap in $PATH; do
 echo ${ap}-${#ap};
done
IFS=$' \t\n'
