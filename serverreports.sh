#!bin/bash

##script : Siddhesh DHoke
##Date :10/10/2016
#Description : Compete sserver report

echo "Hostname:$HOSTNAME"

echo "Server free memory :-"
server_mem=$(free -m | awk 'NR==2 {print $2}' | awk '{print $1}')
echo "$server_mem"

echo "Server load :-"
server_load=$(uptime)
echo "$server_load"

echo "Server disk :-"
server_disk=$(df -h)
echo "$server_disk"

echo "Server info :-"
server_serverinfo=$(cat /proc/cpuinfo)
echo "$server_serverinfo"

echo "Server total users :-" 
server_user=$(awk 'END{print NR}' /etc/passwd)
echo "$server_user"
