#!/bin/bash

# Define the target directory and the output file
TARGET_DIR="./"
OUTPUT_FILE="combined_text.txt"

# Go to the target directory
cd "$TARGET_DIR" || { echo "Directory not found."; exit 1; }

# Find all .txt files in alphabetical order and combine them into the output file
find . -type f -name "*.txt" | sort | xargs cat > "$OUTPUT_FILE"

# Confirm completion
echo "All text files in $TARGET_DIR and its subdirectories have been combined into $OUTPUT_FILE in alphabetical order."
