#!/bin/bash

# Directory containing logs
LOG_DIR="/logs"

# Check if directory exists
if [ ! -d "$LOG_DIR" ]; then
  echo "Directory $LOG_DIR does not exist."
  exit 1
fi

# Loop through all log files in the directory
for file in "$LOG_DIR"/*.log; do
  echo "Processing file: $file"
  
  # Extract lines containing "ERROR" and parse date and message
  grep "ERROR" "$file" | while read -r line; do
    # Extract date (assuming format YYYY-MM-DD or similar at the start of line)
    DATE=$(echo "$line" | grep -oE '([0-9]{4}-[0-9]{2}-[0-9]{2})')
    
    # Extract error message (everything after "ERROR")
    MESSAGE=$(echo "$line" | sed -n 's/.*ERROR[: ]\{0,1\}//p')
    
    echo "date: $DATE | $MESSAGE"
  done
done
