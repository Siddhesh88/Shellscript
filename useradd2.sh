#!/bin/bash


for user in `cat users1`
do 
echo $user
adduser $user

echo "$user:$user_pass" | chpasswd < users

#mkdir /home/$user
#cp -a /etc/skel/.bash* /home/$user/
chown -R $user:$user /home/$user/
done




