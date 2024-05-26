#!/bin/bash

declare -A seen_sizes

while IFS= read -r line; do
    # Extract size from the line using grep and regex
    size=$(echo "$line" | grep -oP 'Words: \d+' | grep -oP '\d+')
    if [[ -z "${seen_sizes[$size]}" ]]; then
        echo "$line"
        seen_sizes[$size]=1
    fi
done
