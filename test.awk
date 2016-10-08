#!/bin/bash -f

BEGIN{
	FS=":"
}
{
print $10 /etc/passwd
}
END{
} 
