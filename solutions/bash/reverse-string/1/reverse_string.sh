#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
#   main () {
#     # your main function code here
#   }
#
#   # call main with all of the positional arguments
#   main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***

reverseString () {
  local size=${#1}
  local reversed=""
  local i=$((size-1))
  
  while [ $i -ge 0 ]; do
    reversed+="${1:i:1}"
    i=$((i-1))
  done
  # return result
  echo "$reversed"
} 


if [[ -n "$1" ]]; then
  resultado=$(reverseString "$1")
  echo "$reversed"
fi
