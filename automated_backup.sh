#!/bin/bash
# Automated backup of documents directory
backup_dir="/home/user/backup"
mkdir -p "$backup_dir"
tar -czf "$backup_dir/documents_backup_$(date +%Y%m%d).tar.gz" /home/user/documents
echo "Backup completed."

