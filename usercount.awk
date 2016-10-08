#!/bin/bash -f

BEGIN{

FS=":"
}
{
print $1, $NF
}
END{
print "total number of users", NR
}

### difference between print and printf
### why $ is not used in NR and used in $NF
##$NF = feild will print
##NF number of field
