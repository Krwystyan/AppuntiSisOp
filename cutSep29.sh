#!/bin/bash

cut -b 3-5,10-15 WordEs28.txt | sed 's/ //g' | sed 's/\t//g' | sed 's/*//g' | wc -m
