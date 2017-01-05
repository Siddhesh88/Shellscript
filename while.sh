#!/bin/bash
retry=10
n=0
while true
do
if nc -zw1 localhost 90
then
echo "Apache is running"
break
else
echo "Apache is not running"
((n++))
sleep 2
fi
done
