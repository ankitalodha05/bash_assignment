#!/bin/bash
# Check if apache2 is running
if ! pgrep apache2 > /dev/null; then
  echo "apache2 is not running. Starting apache2."
  service apache2 start
  echo "$(date): apache2 was started" >> /var/log/process_monitor.log
else
  echo "apache2 is running."
fi

