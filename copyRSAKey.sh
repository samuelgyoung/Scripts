#!/bin/bash
#*******************************************************************************
# Copyright (c) 2018 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#     IBM Corporation - initial API and implementation
#*******************************************************************************

#First, Generate a key with ssh-keygen

#Example: ssh-copy-id sgyoung@192.168.1.249
#Command basically copies the key in /Users/samuelyoung/.ssh/id_rsa.pub to the target users directory under .ssh/authorized_keys

if [ "$#" -ne 2 ]; then
	echo "USAGE: CopyRSAKey.sh <user> <destination>"
	exit 1
fi

ssh-copy-id $1@$2