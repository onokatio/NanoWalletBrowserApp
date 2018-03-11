#!/bin/bash

set -e


git submodule init
git submodule update
if ! gulp --version ;then
	echo 'gulp not found'
	exit
fi
cd NanoWallet && yarn && gulp && cd ../
cp -r ./NanoWallet/build ./chrome/
zip -r NanoWallet.zip ./chrome
