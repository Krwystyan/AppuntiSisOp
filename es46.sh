#!/bin/bash

#Questo esercizio stampa i primi 3 caratteri dell'ultime 4 righe dello stesso file

tail -n 4 /usr/include/stdio.h | cut -b 3
