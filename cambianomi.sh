#!/bin/bash

for (( NUM=0;$NUM<=9;NUM=$NUM+1 )); do
  mv ./1.${NUM} ./2.${NUM}
done;

