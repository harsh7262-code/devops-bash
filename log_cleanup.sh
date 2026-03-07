#!/bin/bash

LOG_DIR="/var/log"
DAYS=7

echo "Deleting logs older than $DAYS days in $LOG_DIR"
echo "---------------------------------------------"

find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "---------------------------------------------"
echo "Old logs deleted successfully."
