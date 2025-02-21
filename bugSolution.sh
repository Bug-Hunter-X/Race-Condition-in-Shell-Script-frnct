#!/bin/bash

# This script demonstrates a solution to the race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Use flock to prevent race conditions
flock -n -e file1.txt; echo "Process 1 writing to file1.txt" > file1.txt
flock -n -e file2.txt; echo "Process 2 writing to file2.txt" > file2.txt

# Print the contents of both files
cat file1.txt
cat file2.txt