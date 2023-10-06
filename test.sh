#!/bin/bash

# just for test if sequence is wrong
#sequence=(23 22 123 1 5 16 3 22)
sequence=(`./numbers.sh`)

unique=1
in_range=1

declare -A seen

for number in "${sequence[@]}"; do
  if [[ "${seen[$number]}" ]]; then
    unique=0
    break
  else
    seen["$number"]=1
  fi

  if [[ $number -lt 1 ]]; then
    in_range=0
  fi

 if [[ $number -gt 10 ]]; then
    in_range=0
  fi

done

if [[ $unique -eq 1 ]]; then
  echo "The numbers in the sequence are unique."
else
  echo "The numbers in the sequence are not unique."
fi

if [[ $in_range -eq 1 ]]; then
  echo "All numbers in the sequence are within the range of 1-10."
else
  echo "Some numbers in the sequence are not within the range of 1-10."
fi
