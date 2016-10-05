#!/bin/bash

#read -p "Enter user name : " user
#user_pass=password

read -s -p "Enter user password : " password

for user in `cat users`
do 
echo $user
adduser $user

echo "$user:$password" | chpasswd

mkdir /home/$user
cp -a /etc/skel/.bash* /home/$user/
chown -R $user:$user /home/$user/
done
