#!/bin/bash
# Script: disk_alert.sh
# Purpose: Alert if disk usage exceeds threshold

THRESHOLD=80

USAGE=$(df -h / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "Current disk usage: $USAGE%"

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: Disk usage is above $THRESHOLD%!"
    exit 1
else
    echo "Disk usage is under control."
    exit 0
fi

