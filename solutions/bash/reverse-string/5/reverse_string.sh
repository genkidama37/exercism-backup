#!/usr/bin/env bash

#length=${#1}
reversed="" 

# An extended explanation of how this while loop works can be found here:
#   https://exercism.org/tracks/bash/exercises/reverse-string/articles/performance
while IFS= read -d "" -r -n 1 char; do
 reversed="$char$reversed"
done < <(printf "%s" "$1")
#for ((i = length-1; i >= 0; i--)); do
#    reversed+="${1:i:1}"
#done
#
echo "$reversed"



