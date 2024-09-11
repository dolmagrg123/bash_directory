: '
Problem: Write a script that organizes files in a specified directory by their file extension. 
Create subdirectories for each extension (e.g., .txt, .jpg, .sh) and 
move the files into their respective folders.
Requirements:
Use for or while loops to iterate through files.
Handle files without extensions by placing them in an "Others" folder.
Use command-line arguments to specify the directory to organize.

'
#!/bin/bash

# Check if the user provided a directory as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Assign the directory to a variable
DIR=$1

# Check if the provided argument is a valid directory
if [ ! -d "$DIR" ]; then
  echo "Error: '$DIR' is not a valid directory."
  exit 1
fi

# Change to the provided directory
cd "$DIR" || exit

# Loop through all files in the directory
for file in *; do
  # Check if it's a regular file (not a directory or special file)
  if [ -f "$file" ]; then
    # Get the file extension
    ext="${file##*.}"
    
    # Check if the file has an extension
    if [ "$file" != "$ext" ]; then
      # Create a folder for the extension if it doesn't exist
      if [ ! -d "$ext" ]; then
        mkdir "$ext"
      fi
      # Move the file into the folder
      mv "$file" "$ext/"
    else
      # If no extension, move to the "Others" folder
      if [ ! -d "Others" ]; then
        mkdir "Others"
      fi
      mv "$file" "Others/"
    fi
  fi
done

echo "Files have been organized by extension."



