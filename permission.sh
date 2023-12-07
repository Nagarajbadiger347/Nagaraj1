#!/bin/bash

read -p "Enter the folder name: " folder_name

# Check if the folder exists
if [ -d "$folder_name" ]; 
  then
    for file in "$folder_name"/*;
     do
        if [ -f "$file" ]; 
          then 
            if [ "$(stat -c "%a" "$file")" -ne 600 ]; 
              then
                chmod 600 "$file"
                echo "Changed permissions to 600 for $file"
            fi
        fi
    done
    echo "Permissions have been updated to 600 for all applicable files in the folder."
else
    echo "The folder does not exist or is not a directory."
fi

