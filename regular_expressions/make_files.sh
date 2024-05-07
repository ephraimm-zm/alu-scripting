#!/bin/bash

# List of file names
files=(
0-simply_match_school.rb
1-repetition_token_0.rb
2-repetition_token_1.rb
3-repetition_token_2.rb
4-repetition_token_3.rb
5-beginning_and_end.rb
6-phone_number.rb
7-OMG_WHY_ARE_YOU_SHOUTING.rb
8-textme.rb
9-passed_linkedin_regex_challenge.jpg
)

# Create files and set permissions
for file in "${files[@]}"; do
    touch "$file"
    chmod +x "$file"
    echo "#!/usr/bin/env ruby" > "$file"
done

# Generate links in README.md
for file in "${files[@]}"; do
    echo "- [$file](https://github.com/ephraimm-zm/alu-scripting/blob/main/regular_expressions/$file)" >> README.md
done

