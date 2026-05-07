#!/usr/bin/env bash

reversed="" 

for ((i = 0; i < ${#1}; i++)); do
    reversed="${1:i:1}$reversed"
done

echo "$reversed"



