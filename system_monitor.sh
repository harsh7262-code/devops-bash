#!/bin/bash

echo "===== SERVER HEALTH REPORT ====="
echo "Date: $(date)"
echo "---------------------------------"

# CPU Usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'

echo "---------------------------------"

# Memory Usage
echo "Memory Usage:"
free -m | awk 'NR==2{printf "Used: %sMB / Total: %sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'

echo "---------------------------------"

# Disk Usage
echo "Disk Usage:"
df -h | awk '$NF=="/"{printf "Used: %s / Total: %s (%s)\n", $3,$2,$5}'

echo "================================="
