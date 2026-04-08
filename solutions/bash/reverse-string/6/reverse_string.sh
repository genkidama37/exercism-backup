#!/usr/bin/env bash

reversed="" 

# An extended explanation of how this while loop works can be found here:
#   https://exercism.org/tracks/bash/exercises/reverse-string/articles/performance
while IFS= read -d "" -r -n 1 char; do
 reversed="$char$reversed"
done < <(printf "%s" "$1")

echo "$reversed"



