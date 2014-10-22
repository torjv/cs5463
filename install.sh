#!/bin/bash

if lscpu | grep Architecture | grep -q armv6 
then 
  # Raspberry Pi 
  git clone git://git.drogon.net/wiringPi 
  cd ./wiringPi 
else 
  # Banana Pi
  git clone https://github.com/LeMaker/WiringBPi.git 
  cd ./WiringBPi 
fi 
./build 
cd ../ 
node-gyp rebuild 