#!/bin/bash

for file in ./content/recipes/*.md; do
	if [ -e "$file" ] && [[ "$file" != *PXL* ]] && [[ ! "$file" =~ _index.md$ ]]; then
    path=${file/content/static}
    path=${path/%.md/.pdf}
    echo "$file"
    pandoc "$file" -f markdown -s -o "$path" \
      --variable documentclass=scrartcl \
      --variable classoption=twocolumn \
      --variable geometry=margin=2cm \
      --variable geometry=nohead
  fi
done
