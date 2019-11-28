#!/bin/bash

#IP

#User
#Create user without PW
useradd -m -p tge243 -s /bin/bash alexandre
#Initiate passwd for the user
echo -e "tge243\ntge243" | passwd alexandre

#SSH
