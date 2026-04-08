#!/usr/bin/env bash

size=${#1}
  
reversed="" 

for ((i=size-1; i>=0; i--)); do
  reversed+="${1:i:1}"
done

echo "$reversed"



