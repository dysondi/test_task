#!/bin/bash

#collors for output text
GREEN='\033[0;32m'
RED='\033[0;31m'  
NC='\033[0m' 




# you can use this line just for test if sequence is wrong
#sequence=(23 22 22 123 1 5 16 3)
sequence=(`./numbers.sh`)

unique=1
in_range=1
random_order=1

# Check if numbers are unique
for num1 in $sequence; do
    count=0
    for num2 in $sequence; do
        if [ $num1 -eq $num2 ]; then
            count=$((count + 1))
        fi
    done
    if [ $count -gt 1 ]; then
        unique=0
        break
    fi
done

# Check if numbers are in range 1-10
for num in $sequence; do
    if [ $num -lt 1 ] || [ $num -gt 10 ]; then
        in_range=0
        break
    fi
done

# Check if the sequence is in random order
sorted_sequence=$(echo "$sequence" | tr " " "\n" | sort -n | tr "\n" " ")
if [ "$sequence" == "$sorted_sequence" ]; then
    random_order=0
fi

# Print results
if [ $unique -eq 1 ]; then
    echo -e "${GREEN}The numbers in the sequence are unique.${NC}"
else
    echo -e "${RED}The numbers in the sequence are not unique.${NC}"
fi

if [ $in_range -eq 1 ]; then
    echo -e "${GREEN}All numbers in the sequence are in the range of 1-10.${NC}"
else
    echo -e "${RED}Some numbers in the sequence are not in the range of 1-10.${NC}"
fi

if [ $random_order -eq 1 ]; then
    echo -e "${GREEN}The sequence is in random order.${NC}"
else
    echo -e "${RED}The sequence is not in random order.${NC}"
fi
