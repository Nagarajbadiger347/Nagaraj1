#!/bin/bash

# Specify the parent directory to check
parent_directory="/path/to/parent_directory"

# Loop through each directory within the parent directory
for directory in "$parent_directory"/*; do
    # Check if the directory is empty
    if [ -z "$(ls -A "$directory")" ]; then
        echo "Directory '$directory' is empty. Deleting..."
        # Delete the directory
        rm -r "$directory"
        echo "Directory '$directory' deleted."
    else
        echo "Directory '$directory' is not empty."
    fi
done
