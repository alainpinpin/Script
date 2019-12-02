#!/bin/bash

#IP

#User

#SSH
	#pour modifier le fichier pour empecher le login SSH root trouver on the web
echo "PermitRootLogin no" >> /etc/ssh/sshd_config
	#Allow only alexandre to log in
echo "AllowUsers alexandre" >> /etc/ssh/sshd_config
	#Interdit le login par passwd
echo "PasswordAuthentication no" >> /etc/ssh/sshd_config