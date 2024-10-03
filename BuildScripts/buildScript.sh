#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Step 1: Define the destination directory and result folder variables
DEST_DIR="/path/to/destination"  # Update with your actual destination path
SOURCE_DIR="/path/to/source"      # Update with your actual source path
SH_SCRIPT="path/to/script.sh"     # Update with your actual script path
RESULT_FOLDER="$DEST_DIR/result"

# Step 2: Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy src, test folder, and Makefile to the destination directory
cp -r "$SOURCE_DIR/src" "$DEST_DIR/src"
cp -r "$SOURCE_DIR/test" "$DEST_DIR/test"
cp "$SOURCE_DIR/Makefile" "$DEST_DIR/Makefile"

# Step 3: Run the .sh script
bash "$SH_SCRIPT"

# Step 4: Create the result directory if it doesn't exist
mkdir -p "$RESULT_FOLDER"

# Copy add_me binary and test_add_me.xml into the result folder
cp "$DEST_DIR/add_me" "$RESULT_FOLDER/add_me"
cp "$DEST_DIR/test_add_me.xml" "$RESULT_FOLDER/test_add_me.xml"

# Step 5: Copy the result folder back to the original source directory
cp -r "$RESULT_FOLDER" "$SOURCE_DIR/result"

# Step 6: Clean up - delete the destination directory and its contents
rm -rf "$DEST_DIR"

echo "Script completed successfully."
