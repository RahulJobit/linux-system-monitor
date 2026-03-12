#!/bin/bash

echo "===== System Health Report ====="
echo "Date: $(date)"
echo ""

echo "---- CPU Usage ----"
top -bn1 | grep "Cpu(s)" 

echo ""
echo "---- Memory Usage ----"
free -h

echo ""
echo "---- Disk Usage ----"
df -h

echo ""
echo "===== End of Report ====="


echo ""


#!/bin/bash

echo "System Health Check"

DISK=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ $DISK -gt 80 ]; then
    echo "WARNING: Disk usage above 80%"
else
    echo "Disk usage normal"
fi