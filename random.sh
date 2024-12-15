#!/bin/bash

((RANDOM=$$))
CountRandom=1

while (( (${RANDOM}%10) != 2)); do ((CountRandom=${CountRandom}+1)); done;
echo La var RANDOM è stata controllata ${CountRandom}
