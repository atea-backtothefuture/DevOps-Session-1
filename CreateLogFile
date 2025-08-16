#!/bin/bash

LOG_DIR="/logs"

# Create /logs directory if it doesn't exist
# Check if directory exists
if [ ! -d "$LOG_DIR" ]; then
  mkdir -p /logs
fi

# Generate 1000 lines of dummy logs
for i in {1..998}; do
  echo "2025-08-14 INFO: Routine check completed for service $i" >> /logs/sample.log
done

# Add 2 error messages
echo "2025-08-15 ERROR: Failed to connect to database" >> /logs/sample.log

for i in {1..998}; do
  echo "2025-08-16 INFO: Routine check completed for service $i" >> /logs/sample.log
done

echo "2025-08-17 ERROR: Timeout while accessing external API" >> /logs/sample.log

for i in {1..998}; do
  echo "2025-08-18 INFO: Routine check completed for service $i" >> /logs/sample.log
done
