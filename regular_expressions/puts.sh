#!/bin/bash

for file in *; do
    if [ "$file" != "README.md" ]; then
        # Perform some action on the file
        echo "Processing file: $file"
        # Example action: Printing file contents
        cat "$file"
        
        # Append the specified line to the file
        sed -i -e '$a puts ARGV[0].scan(//).join' "$file"
    fi
done
puts ARGV[0].scan(//).join
