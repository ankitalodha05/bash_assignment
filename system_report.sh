#!/bin/bash
# Generate system report
echo "System Uptime: $(uptime)"
echo "Memory Usage: $(free -h)"
echo "CPU Load: $(uptime | awk '{print $10 $11 $12}')"
echo "Disk Usage: $(df -h)"
echo "Running Processes: $(ps -e)"

