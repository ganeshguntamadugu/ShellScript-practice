#!/bin/bash

# Simple backup script: copy one file to another location.
# Usage: ./13-backup.sh /path/to/source/file /path/to/destination/file

set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <source-file> <destination-file>"
  exit 1
fi

SOURCE="$1"
DEST="$2"

if [ ! -d "$SOURCE" ]; then
  echo "Error: source file '$SOURCE' does not exist or is not a regular file."
  exit 2
fi

DEST_DIR=$(dirname "$DEST")
if [ ! -d "$DEST_DIR" ]; then
  echo "Destination directory '$DEST_DIR' does not exist. Creating it..."
  mkdir -p "$DEST_DIR"
fi

cp -p "$SOURCE" "$DEST"

echo "Backup complete: '$SOURCE' -> '$DEST'"

