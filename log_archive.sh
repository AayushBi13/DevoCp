#!/bin/bash

# Check if log directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: ./log-archive.sh <log-directory>"
    exit 1
fi

LOG_DIR=$1

# Check if directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory '$LOG_DIR' does not exist!"
    exit 1
fi

# Create archive directory if it doesn't exist
ARCHIVE_DIR="./logs_archive"
mkdir -p $ARCHIVE_DIR

# Create archive filename with date and time
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

# Compress the logs
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" "$LOG_DIR"

echo "Logs archived: $ARCHIVE_DIR/$ARCHIVE_NAME"

# Log the date and time of the archive
echo "$(date '+%Y-%m-%d %H:%M:%S') - Archived '$LOG_DIR' to '$ARCHIVE_DIR/$ARCHIVE_NAME'" >> "$ARCHIVE_DIR/archive_log.txt"

echo "Archive log updated: $ARCHIVE_DIR/archive_log.txt"