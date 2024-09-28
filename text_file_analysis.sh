#!/bin/bash
# Count lines, words, and characters in a file
if [ -f "$1" ]; then
  lines=$(wc -l < "$1")
  words=$(wc -w < "$1")
  chars=$(wc -m < "$1")
  echo "Lines: $lines"
  echo "Words: $words"
  echo "Characters: $chars"
else
  echo "File does not exist."
fi

