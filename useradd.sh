#!/bin/bash

user_name=sidd
user_pass=password

useradd $user_name
echo "$user_name:$user_pass" | chpasswd

mkdir /home/$user_name
cp -a /etc/skel/.bash* /home/$user_name
chown -R $user_name:$user_name /home/$user_name

