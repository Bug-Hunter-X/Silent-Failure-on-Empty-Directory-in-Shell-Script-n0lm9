#!/bin/bash

# This script attempts to process files in a directory,
# but it has a subtle bug related to globbing and empty directories.

input_dir="/path/to/input/directory"

# The problem is here.  If the input directory is empty, the loop doesn't execute,
# and the script exits without an error, giving no indication of emptiness.
for file in "$input_dir"/*; do
  echo "Processing: $file"
  # ... further processing of the file
done

# This message will always be printed, regardless of success or empty directory
echo "Processing complete."