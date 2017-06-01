#!/bin/bash

#First, Generate a key with ssh-keygen

#Example: ssh-copy-id sgyoung@192.168.1.249
#Command basically copies the key in /Users/samuelyoung/.ssh/id_rsa.pub to the target users directory under .ssh/authorized_keys

if [ "$#" -ne 2 ]; then
	echo "USAGE: CopyRSAKey.sh <user> <destination>"
	exit 1
fi

ssh-copy-id $1@$2