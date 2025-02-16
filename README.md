# Silent Failure on Empty Directory

This repository demonstrates a subtle bug in a shell script that involves processing files from a directory. The script fails silently when the input directory is empty because the globbing pattern used doesn't handle empty directories, leading to no files being processed and no error indication. The solution improves the script's robustness by explicitly handling the case of an empty directory.

## Bug

The `bug.sh` script demonstrates the faulty behavior. The main issue lies in how it handles the case of an empty input directory. The `for` loop iterates over the results of the glob `"$input_dir"/*`, but when the directory is empty, this glob returns nothing, and the loop does not execute.  This results in the script completing without any indication of whether the input directory was empty or contained files.

## Solution

The `bugSolution.sh` script corrects this by checking for the existence and emptiness of the directory.  If the directory is empty, it prints a message informing the user; otherwise, it proceeds to process the files as before.

This improved version ensures that the script doesn't silently fail but provides meaningful feedback regardless of the input directory's contents.