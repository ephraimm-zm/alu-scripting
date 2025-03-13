#!/bin/bash

files=("0-subs.py" "1-top_ten.py" "2-recurse.py" "3-count.py")

for file in "${files[@]}"; do
    touch "$file"
    echo "#!/usr/bin/python3" > "$file"
    chmod +x "$file"
done

touch README.md
