#!/usr/bin/env bash

reverse_string () {
  local input="$1"
  local size=${#input}
  local reversed=""
  local i=$((size-1))
  
  for ((i=size-1; i>=0; i--)); do
    reversed+="${input:i:1}"
  done
  
  # return result
  echo "$reversed"
} 

main() {
  local reversed=""
  if [[ $# -gt 0 ]]; then
    reversed=$(reverse_string "$1")
    echo "$reversed"
  fi
}

# Script's entry point
main "$@"

