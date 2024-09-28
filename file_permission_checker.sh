#!/bin/bash
# Check file permissions
if [ -e "$1" ]; then
  [ -r "$1" ] && echo "File has read permission" || echo "File does not have read permission"
  [ -w "$1" ] && echo "File has write permission" || echo "File does not have write permission"
  [ -x "$1" ] && echo "File has execute permission" || echo "File does not have execute permission"
else
  echo "File does not exist."
fi

