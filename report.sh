#!/bin/bash

echo "SERVER REPORT"
freemem=`free -m |awk '{print $0}'`
echo $freemem

totalcpu=$(grep -c processor /proc/cpuinfo)
echo $totalcpu

echo Disk Space
df -h

echo "Total number of users"
Totaluser= awk 'END{print NR}' /etc/passwd
echo $totaluser

echo "Server IP"
ServerIP=$(ifconfig eth0 | awk -F: 'NR==2 ""{print $2}' | awk '{print $1}')
echo $ServerIP

