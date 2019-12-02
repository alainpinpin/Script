#!/bin/bash

#IP

#User
	#Create user without PW
useradd -m -p tge243 -s /bin/bash alexandre
	#Initiate passwd for the user
echo -e "tge243\ntge243" | passwd alexandre
	#Add user to Sudoer
usermod -aG sudo alexandre
	#ligne pour permettre le root log in sans PW
echo "alexandre     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
	#Création de la SSH Key?? pas sur checker avec julien avant de runner
ssh-keygen -t rsa -N "" -f my.key

#SSH
