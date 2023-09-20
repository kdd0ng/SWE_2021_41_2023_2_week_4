#!/bin/bash

source_dir="files"

for file in "$source_dir"/*; do
    if [ -f "$file" ]; then
        
        first_char=$(basename "$file" | cut -c 1)

        lower_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

        mv "$file" "$lower_char/"
    fi
done