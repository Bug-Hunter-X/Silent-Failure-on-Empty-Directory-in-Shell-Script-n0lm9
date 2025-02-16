#!/bin/bash

input_dir="/path/to/input/directory"

# Check if directory exists and is not empty
if [[ -d "$input_dir" && $(ls -A "$input_dir") ]]; then
  for file in "$input_dir"/*; do
    echo "Processing: $file"
    # ... further processing of the file
done
else
  echo "Input directory is empty or does not exist."
fi

echo "Processing complete."