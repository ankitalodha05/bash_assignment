#!/bin/bash
# Disk usage alert
disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$disk_usage" -gt 80 ]; then
  echo "Disk usage is above 80%. Sending alert email."
  echo "Disk usage is at ${disk_usage}% on $(hostname)" | mail -s "Disk Usage Alert" admin@example.com
else
  echo "Disk usage is under control."
fi

