#!/bin/bash

if(($# != 1)); then 
  echo "Usage bash ./speedTests.sh <amount>"
  exit 1
fi

AMOUNT=$1
OUTPUT_DIR="./speedTests"

# Create a subdirectory within OUTPUT_DIR for this run
RUN_SUBDIR=$(date +"%d.%m.%Y_%H-%M")
RUN_DIR="$OUTPUT_DIR/$RUN_SUBDIR"
mkdir -p "$RUN_DIR"

# Use a C-style for loop for iteration
for ((i=1; i<=AMOUNT; i++)); do
  # Get the current date and time for the file name
  TIMESTAMP=$(date +"%d.%m.%Y_%H-%M-%S")
  
  # Define the output file path
  OUTPUT_FILE="$RUN_DIR/speedTest_$TIMESTAMP.txt"
  
  # Print progress
  echo "Testing connection nr. $i..."
  
  # Run the networkquality command and save its output to the file
  networkquality > "$OUTPUT_FILE"
  echo "Speed test $i results saved to $OUTPUT_FILE"
  
  # Wait 30 seconds before the next test, except after the last one
  if ((i < AMOUNT)); then
    sleep 30
  fi
done