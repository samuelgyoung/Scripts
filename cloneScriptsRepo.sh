#!/bin/bash

if [ -d ~/bin/ ]; then
  	# Control will enter here if $DIRECTORY exists.
	echo "Directory Exists!"
	cd ~/bin/ && rm -fr *; rm -fr .*
	cd ~ && 
	git clone https://github.com/samuelgyoung/Scripts bin
	cd ~/bin/ && chmod 755 *
else
	echo "Directory does NOT exist. Cloning the repo."
	git clone https://github.com/samuelgyoung/Scripts bin
	cd ~/bin/ && chmod 755 *
fi



