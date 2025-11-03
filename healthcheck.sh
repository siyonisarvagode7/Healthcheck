#!/bin/bash
# healthcheck.sh
# Simple System Health Monitoring Script
# Author: Siyoni
# Date: $(date)
# Description: Checks system metrics and saves them to healthlog.txt

LOGFILE="healthlog.txt"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo "=====================================" >> $LOGFILE
echo " System Health Check - $TIMESTAMP " >> $LOGFILE
echo "=====================================" >> $LOGFILE

# System Date and Time
echo "Date & Time:" $(date) >> $LOGFILE

# Uptime
echo -e "\nUptime:" >> $LOGFILE
uptime >> $LOGFILE

# CPU Load
echo -e "\nCPU Load:" >> $LOGFILE
top -bn1 | grep "load average" >> $LOGFILE

# Memory Usage
echo -e "\nMemory Usage (MB):" >> $LOGFILE
free -m >> $LOGFILE

# Disk Usage
echo -e "\nDisk Usage:" >> $LOGFILE
df -h >> $LOGFILE

# Top 5 Memory Consuming Processes
echo -e "\nTop 5 Memory-Consuming Processes:" >> $LOGFILE
ps aux --sort=-%mem | head -n 6 >> $LOGFILE

# Service Status Check (Add more services as needed)
echo -e "\nService Status:" >> $LOGFILE
for service in nginx ssh; do
  if systemctl is-active --quiet $service; then
    echo "$service: RUNNING" >> $LOGFILE
  else
    echo "$service: NOT RUNNING" >> $LOGFILE
  fi
done

echo -e "\nLog entry complete.\n" >> $LOGFILE
