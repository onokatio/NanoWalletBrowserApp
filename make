#!/bin/bash

set -e

git submodule init
git submodule update
cd NanoWallet && yarn && gulp && cd ../
cp -r ./NanoWallet/build ./chrome/
zip -r NanoWallet.zip ./chrome
