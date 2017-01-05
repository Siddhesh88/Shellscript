#!/bin/bash
while true
do
	if nc -zwl localhost 80
	then
	    echo "Apache is running"
            break
	else
	    echo "Apache is not running"
	    ((n++))
	     sleep 2
	fi
done
