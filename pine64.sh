#!/bin/bash

#IP

touch /etc/issue
echo "\4" > /etc/issue

#User
	#Create user without PW
useradd -m -p tge243 -s /bin/bash alexandre
	#Initiate passwd for the user
echo -e "tge243\ntge243" | passwd alexandre
	#Add user to Sudoer
usermod -aG sudo alexandre
	#ligne pour permettre le root log in sans PW
echo "alexandre     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
	#Import de ma clé publique manuellement
mkdir .ssh /home/alexandre/

touch /home/alexandre/.ssh/authorized_keys

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyzEEOwOeS/NCPsi3D0yYnZE3k60j/Zq0SgS8gknBCoPvPchRIfVtBMJA1tFMTDW/Pey/M1Iy5WjuU6UjtT93rHs833ijEBGjnUCPFK2DqwuJNpQYOrkF4Ja8S/QXpd/8lPK9b3tQLD1QYWQXLxG13CQXyHqj6zQQOVqTws9CdKkpiIvXrstslquYmeM3yhg99KQUkypyN5OSI9k/js/nOJk37f/mZawHEoyLg62mNJWU9cuoVD6FeQnJNzK4ocQxLjWmfH9k7zMcFnnkT6yrPuzQgsQrtGq6UbwKdVLiSMjRGnyTw+AV0k6lt0S4/rDSoavsaN3wQp5DjTlk8Fmwh alain pin pin@DESKTOP-U6LPDCQ
" > /home/alexandre/.ssh/authorized_keys

#SSH
	#pour modifier le fichier pour empecher le login SSH root trouver on the web
echo "PermitRootLogin no" >> /etc/ssh/sshd_config
	#Allow only alexandre to log in
echo "AllowUsers alexandre" >> /etc/ssh/sshd_config
	#Interdit le login par passwd
echo "PasswordAuthentication no" >> /etc/ssh/sshd_config