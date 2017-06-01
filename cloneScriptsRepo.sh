#!/bin/bash

if [ -d ~/bin/ ]; then
  	# Control will enter here if $DIRECTORY exists.
	echo "Directory Exists!"
	cd ~/bin/ && rm -fr *; rm -fr .*
	cd ~ && 
	git clone https://github.com/samuelgyoung/Scripts bin
else
	echo "Directory does NOT exist. Cloning the repo."
	git clone https://github.com/samuelgyoung/Scripts bin
fi



