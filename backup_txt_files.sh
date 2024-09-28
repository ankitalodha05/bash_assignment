#!/bin/bash
# Backup .txt files
if [ -d "$1" ]; then
  backup_dir="backup_$(date +%Y%m%d_%H%M%S)"
  mkdir -p "$backup_dir"
  cp "$1"/*.txt "$backup_dir"
  echo "Backup completed. Files copied to $backup_dir"
else
  echo "Directory does not exist."
fi

